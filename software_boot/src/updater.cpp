#include "updater.h"
#include "main.h"
#include <string.h>

#define CRC32_POLY_R 0xEDB88320
static uint32_t crc32r_table[256];

#define FW_BUF_SIZE 256
uint8_t fw_read_buf[FW_BUF_SIZE];
#define FW_START_SECTOR 2
#define FW_SECTORS_COUNT 10

void crc32_init(void)
{
    uint32_t i, j;
    uint32_t cr;
    for (i = 0; i < 256; ++i)
    {
        cr = i;
        for (j = 8; j > 0; --j)
            cr = cr & 0x00000001 ? (cr >> 1) ^ CRC32_POLY_R : (cr >> 1);
        crc32r_table[i] = cr;
    }
}

uint32_t crc32_byte(uint32_t init_crc, uint8_t *buf, int len)
{
    uint32_t crc;
    crc = ~init_crc;
    while(len-- > 0)
        crc = ( crc >> 8 ) ^ crc32r_table[( crc ^ (*buf++) ) & 0xff];
    return ~crc;
}

void fw_write(uint8_t* buf, uint32_t size, uint32_t start_addr)
{
    uint32_t fw_offs = 0;

    while (fw_offs < size)
    {
        uint32_t fw_dw = *(reinterpret_cast<uint32_t*>(&buf[fw_offs]));
        STM32_FLASH::unlock();
        STM32_FLASH::program(FLASH_TypeProgram::WORD, start_addr, fw_dw);
        STM32_FLASH::lock();
        start_addr += 4;
        fw_offs += 4;
    }
}

char sign_fn[30];
char update_fn[30];

bool check_updates(char drive)
{
    strcpy(sign_fn, "0:/fw_uniemu.bin.sign");
    strcpy(update_fn, "0:/fw_uniemu.bin");

    sign_fn[0] = drive;
    update_fn[0] = drive;
    FIL f;
    if (f_open(&f, sign_fn, FA_READ) != FR_OK)
    {
        xprintf("Unable to open file '%s'!\n\r", sign_fn);
        return false;
    }

    uint32_t crc32;
    int32_t version;
    f_read(&f, &version, sizeof(uint32_t), nullptr);
    f_read(&f, &crc32, sizeof(uint32_t), nullptr);
    f_close(&f);
    xprintf("Found version %d, current version is %d\n\r", version, FW_VERSION);

    // check version
    if (FW_VERSION >= version)
    {
        xprintf("Nothing to update.\n\r");
        return false;
    }
    xprintf("Version mismatched. Updating:\n\r\tCheck new firmware...\n\r");

    if (f_open(&f, update_fn, FA_READ) != FR_OK)
    {
        xprintf("Unable to open file '%s'!\n\r", update_fn);
        return false;
    }

    xprintf("\tErase flash...\n\r");
    uint32_t err;
    STM32_FLASH::unlock();
    if (STM32_FLASH::erase(FLASH_TypeErase::SECTORS, FLASH_VoltageRange::V_2P7_TO_3P6,
                           FLASH_BANK_1, FW_START_SECTOR, FW_SECTORS_COUNT, err) != STM32_RESULT_OK)
    {
        STM32_FLASH::lock();
        xprintf("Failed flash erase!\n\r");
        return false;
    }
    STM32_FLASH::lock();

    crc32_init();

    UINT fw_size = 0;
    UINT fw_readed = 0;
    uint32_t crc32_new = 0;
    uint32_t fw_offset = FW_START_ADDR;
    do
    {
        f_read(&f, fw_read_buf, FW_BUF_SIZE, &fw_readed);
        crc32_new = crc32_byte(crc32_new, fw_read_buf, static_cast<int>(fw_readed));
        fw_write(fw_read_buf, FW_BUF_SIZE, fw_offset);
        fw_offset += FW_BUF_SIZE;
        fw_size += fw_readed;
    } while (fw_readed > 0);
    f_close(&f);

    xprintf("\tReaded firmware (%d bytes), version #%d, checksum OK.\n\r", fw_size, version);

    if (crc32_new != crc32)
    {
        xprintf("Invalid checksum! (%08X != %08X) Aborted.\n\r", crc32_new, crc32);
        LED_PORT.pin_ON(LED3_PIN);
        while (1);
    }

    fw_write(reinterpret_cast<uint8_t*>(&version), sizeof(uint32_t), FW_VERSION_ADDR);

    xprintf("All updated!\n\r");
    return true;
}
