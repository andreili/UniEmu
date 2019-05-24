#include "main.h"

void xfunc_out(unsigned char c)
{
    UART.send_char(c);
}

void (*main_fw_jump)(void);

void usb_fs_proc(USBHCore* core, USBHCore::EHostUser reason)
{
    UNUSED(core);
    switch (reason)
    {
    case USBHCore::EHostUser::SELECT_CONFIGURATION:
        debug_out("Select configuration\n\r");
        break;
    case USBHCore::EHostUser::CLASS_ACTIVE:
        debug_out("Class active\n\r");
        break;
    case USBHCore::EHostUser::CLASS_SELECTED:
        debug_out("Class selected\n\r");
        break;
    case USBHCore::EHostUser::CONNECTION:
        debug_out("Connection\n\r");
        break;
    case USBHCore::EHostUser::DISCONNECTION:
        debug_out("Disconnection\n\r");
        break;
    case USBHCore::EHostUser::UNRECOVERED_ERROR:
        debug_out("Unrecovered error\n\r");
        break;
    }
}

void disconnect_callback(STM32_HCD *hcd)
{
    static_cast<USBHCore*>(hcd->get_data())->LL_disconnect();
    debug_out("USB disconnected\n\r");
}

void connect_callback(STM32_HCD *hcd)
{
    static_cast<USBHCore*>(hcd->get_data())->LL_connect();
    debug_out("USB connected\n\r");
}

void SOF_callback(STM32_HCD *hcd)
{
    static_cast<USBHCore*>(hcd->get_data())->LL_inc_timer();
}

void HC_notify_URB_change_callback(STM32_HCD *hcd, uint8_t ch_num, STM32_HCD::EURBState urb_state)
{
#if (USBH_USE_OS == 1)
    reinterpret_cast<USBHCore*>(hcd->get_data())->LL_notify_URB_change();
#else
    UNUSED(hcd);
#endif
    UNUSED(ch_num);
    UNUSED(urb_state);
}

TCHAR SD_path[4], msc_path[2][4];
FATFS MSCFatFS[2];
SDDriver sd_driver;
MSCDriver msc_driver[2];
FATFS SDFatFS;

USBH_HID usbh_hid[2];
USBH_MSC usbh_msc[2];

TProcWorker ProcWorker;

int main()
{
    LED_PORT.set_config(LED1_PIN | LED2_PIN | LED3_PIN, STM32_GPIO::EMode::OUTPUT_PP, STM32_GPIO::EAF::NONE, STM32_GPIO::ESpeed::LOW, STM32_GPIO::EPull::NOPULL);
    LED_PORT.pin_OFF(LED1_PIN | LED2_PIN | LED3_PIN);
    UART.init(STM32_BRATE_UART6);
    UART.send_str("\n\rUniEmu bootloader\n\r", TXRX_MODE::DIRECT);
    USBH_init();
    FAT_init();

    OS::run();

    while (1)
    {
    }
}

void USBH_init()
{
    STM32_USB_PWR_FS_PORT.set_config(STM32_USB_PWR_FS_PIN, STM32_GPIO::EMode::OUTPUT_PP, STM32_GPIO::EAF::NONE, STM32_GPIO::ESpeed::LOW, STM32_GPIO::EPull::PULLUP);
    STM32_USB_PWR_FS_PORT.pin_OFF(STM32_USB_PWR_FS_PIN);

    usb_FS.init(usb_fs_proc, HOST_FS);
    usb_FS.register_class(&usbh_hid[HOST_FS]);
    usb_FS.register_class(&usbh_msc[HOST_FS]);

    usb_HS.init(usb_fs_proc, HOST_HS);
    usb_HS.register_class(&usbh_hid[HOST_HS]);
    usb_HS.register_class(&usbh_msc[HOST_HS]);

    usb_FS.start();
    usb_HS.start();
}

void FAT_init()
{
    FAT_FS::init();
    sd_driver.init_gpio();
    msc_driver[HOST_FS].link_data(reinterpret_cast<void*>(&usbh_msc[HOST_FS]));
    msc_driver[HOST_HS].link_data(reinterpret_cast<void*>(&usbh_msc[HOST_HS]));
    FAT_FS::link_driver(&sd_driver, SD_path, 0);
    FAT_FS::link_driver(&msc_driver[HOST_FS], msc_path[HOST_FS], 0);
    FAT_FS::link_driver(&msc_driver[HOST_HS], msc_path[HOST_HS], 0);
}

void __attribute__((noreturn)) Error_Handler()
{
    while (1)
        LED_PORT.pin_ON(LED3_PIN);
}

enum class EInitStep: uint8_t
{
    UP_WAIT     = 0,
    UP_READY    = 0x10,
    UP_MOUNT    = 0x11,
    UP_CHECK    = 0x12,
};

namespace OS
{
    template <>
    OS_PROCESS void TProcWorker::exec()
    {
        bool msc_mounted[2], sd_mounted;
        msc_mounted[0] = false;
        msc_mounted[1] = false;
        sd_mounted = false;
        bool updated = false;
        EInitStep step_init = EInitStep::UP_WAIT;
        int cnt = 0;
        bool *is_mounted = &msc_mounted[HOST_FS];
        USBH_MSC *msc;
        FATFS *fs = &MSCFatFS[HOST_FS];
        char *path = msc_path[HOST_FS];
        for(;;)
        {
            switch (step_init)
            {
            case EInitStep::UP_WAIT:
                if ((usb_FS.get_active_class() != nullptr) &&
                    (usb_FS.get_active_class()->get_class_code() == USB_MSC_CLASS) &&
                    (!msc_mounted[HOST_FS]))
                {
                    xprintf("Check FS MSC\n\r");
                    is_mounted = &msc_mounted[HOST_FS];
                    msc = &usbh_msc[HOST_FS];
                    fs = &MSCFatFS[HOST_FS];
                    path = msc_path[HOST_FS];
                    step_init = EInitStep::UP_READY;
                    break;
                }
                if ((usb_HS.get_active_class() != nullptr) &&
                    (usb_HS.get_active_class()->get_class_code() == USB_MSC_CLASS) &&
                    (!msc_mounted[HOST_HS]))
                {
                    xprintf("Check HS MSC\n\r");
                    is_mounted = &msc_mounted[HOST_HS];
                    msc = &usbh_msc[HOST_HS];
                    fs = &MSCFatFS[HOST_HS];
                    path = msc_path[HOST_HS];
                    step_init = EInitStep::UP_READY;
                    break;
                }
                if (!sd_driver.is_card_present() && (!sd_mounted))
                {
                    xprintf("Check SD\n\r");
                    is_mounted = &sd_mounted;
                    fs = &SDFatFS;
                    path = SD_path;
                    step_init = EInitStep::UP_MOUNT;
                    break;
                }
                break;
            case EInitStep::UP_READY:
                if (msc->is_ready())
                {
                    xprintf("Wait mount\n\r");
                    step_init = EInitStep::UP_MOUNT;
                }
            case EInitStep::UP_MOUNT:
                if (*is_mounted || (f_mount(fs, path, 1) == FR_OK))
                {
                    *is_mounted = true;
                    xprintf("Mounted path: '%s'\n\r", path);
                    step_init = EInitStep::UP_CHECK;
                }
                break;
            case EInitStep::UP_CHECK:
                xprintf("Check updates\n\r");
                if (check_updates(path[0]))
                    updated = true;
                else
                {
                    xprintf("Next...\n\r");
                    step_init = EInitStep::UP_WAIT;
                    cnt = 0;
                }
                break;
            }
            if (updated || (++cnt > 2000))
                break;
            sleep(1);
        }

        main_fw_jump = reinterpret_cast<void (*)(void)>(*(reinterpret_cast<uint32_t*>(FW_START_ADDR + 4)));
        xprintf("Jump to main firmware (0x%08X)\n\r", main_fw_jump);
        UART.deinit();
        STM32_RCC::deinit();
        STM32_SYSTICK::deinit();
        __disable_irq();
        STM32_FLASH::enable_remap_system_flash();
        __set_MSP(*reinterpret_cast<uint32_t*>(FW_START_ADDR));
        main_fw_jump();
        while (1);
    }
}

#if scmRTOS_IDLE_HOOK_ENABLE
void OS::idle_process_user_hook()
{
    __WFI();
}
#endif

extern "C" void __init_system_timer()
{
    STM32_SYSTICK::init();
}

void ISR::SysTickTimer()
{
    OS::system_timer_isr();
    OS::raise_context_switch();
}
