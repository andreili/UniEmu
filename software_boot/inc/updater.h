#ifndef UPDATER_H
#define UPDATER_H

#define FW_START_ADDR (FLASH_BASE + 0x8000)
#define FW_VERSION_ADDR (FLASH_BASE + 0x7ff00)
#define FW_VERSION (*(reinterpret_cast<int32_t*>(FW_VERSION_ADDR)))

bool check_updates(char drive);

#endif // UPDATER_H
