#include "main.h"

#define UART uart3

void xfunc_out(unsigned char c)
{
    UART.send_char(c);
}

void usb_fs_proc(USBHCore* core, USBHCore::EHostUser reason)
{
    UNUSED(core);
    switch (reason)
    {
    case USBHCore::EHostUser::SELECT_CONFIGURATION:
        xprintf("Select configuration\n\r");
        break;
    case USBHCore::EHostUser::CLASS_ACTIVE:
        xprintf("Class active\n\r");
        break;
    case USBHCore::EHostUser::CLASS_SELECTED:
        xprintf("Class selected\n\r");
        break;
    case USBHCore::EHostUser::CONNECTION:
        xprintf("Connection\n\r");
        break;
    case USBHCore::EHostUser::DISCONNECTION:
        xprintf("Disconnection\n\r");
        break;
    case USBHCore::EHostUser::UNRECOVERED_ERROR:
        xprintf("Unrecovered error\n\r");
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

USBH_HID usbh_hid[2];
USBH_MSC usbh_msc[2];

int main()
{
    STM32_RCC::enable_clk_GPIOA();
    STM32_RCC::enable_clk_GPIOB();
    STM32_RCC::enable_clk_GPIOC();
    STM32_RCC::enable_clk_GPIOD();
    STM32_RCC::enable_clk_GPIOE();
    STM32_RCC::enable_clk_GPIOD();

    UART.init(STM32_BRATE_UART6);
    UART.send_str("\n\rUniEmu controller, v1.0\n\r", TXRX_MODE::DIRECT);
    UART.send_str("USBH_init\n\r", TXRX_MODE::DIRECT);
    USBH_init();
    UART.send_str("FAT_init\n\r", TXRX_MODE::DIRECT);
    FAT_init();
    //UART.send_str("OS::run\n\r", TXRX_MODE::DIRECT);
    UNI_init();

    //OS::run();

    while (1)
    {
        usb_HS.process();
        usb_FS.process();
        Overlay::OS_exec();
        //STM32_SYSTICK::delay(1);
    }
}

void USBH_init()
{
    STM32_USB_PWR_FS_PORT.set_config(STM32_USB_PWR_FS_PIN, STM32_GPIO::EMode::OUTPUT_PP, STM32_GPIO::EAF::NONE, STM32_GPIO::ESpeed::LOW, STM32_GPIO::EPull::PULLUP);
    STM32_USB_PWR_FS_PORT.pin_OFF(STM32_USB_PWR_FS_PIN);

    usb_FS.init(usb_fs_proc, HOST_FS);
    usb_FS.register_class(&usbh_hid[0]);
    usb_FS.register_class(&usbh_msc[0]);
    usb_FS.start();

    usb_HS.init(usb_fs_proc, HOST_HS);
    usb_HS.register_class(&usbh_hid[1]);
    usb_HS.register_class(&usbh_msc[1]);
    usb_HS.start();
}

void FAT_init()
{
    FAT_FS::init();
    sd_driver.init_gpio();
    msc_driver[0].link_data(reinterpret_cast<void*>(&usbh_msc[0]));
    msc_driver[1].link_data(reinterpret_cast<void*>(&usbh_msc[1]));
    FAT_FS::link_driver(&sd_driver, SD_path, 0);
    FAT_FS::link_driver(&msc_driver[0], msc_path[0], 0);
    xprintf("MSC FS path: '%s'\n\r", msc_path[0]);
    FAT_FS::link_driver(&msc_driver[1], msc_path[1], 0);
    xprintf("MSC HS path: '%s'\n\r", msc_path[1]);
}

void UNI_init()
{
    STM32_RCC::enable_clk_GPIOD();
    STM32_RCC::enable_clk_GPIOE();
    UNI_CTRL_PORT.set_config(UNI_CTRL_WRN_PIN | UNI_CTRL_RDN_PIN, STM32_GPIO::EMode::OUTPUT_PP, STM32_GPIO::EAF::NONE, STM32_GPIO::ESpeed::VERY_HIGH, STM32_GPIO::EPull::PULLUP);
    UNI_ADDR_PORT.set_config(0xFFC0, STM32_GPIO::EMode::OUTPUT_PP, STM32_GPIO::EAF::NONE, STM32_GPIO::ESpeed::VERY_HIGH, STM32_GPIO::EPull::PULLUP);
    UNI_DATA_PORT.set_config(STM32_GPIO::PIN_All, STM32_GPIO::EMode::OUTPUT_PP, STM32_GPIO::EAF::NONE, STM32_GPIO::ESpeed::VERY_HIGH, STM32_GPIO::EPull::PULLUP);

    UNI_CTRL_WRITE_OFF();
    UNI_CTRL_READ_OFF();
    UNI_CTRL_PORT.pin_ON(STM32_GPIO::PIN_3);
    UNI_CTRL_PORT.pin_ON(STM32_GPIO::PIN_4);
    UNI_CTRL_PORT.pin_ON(STM32_GPIO::PIN_5);

    Overlay::init();
}

void __attribute__((noreturn)) Error_Handler()
{
    while (1)
        gpiod.pin_ON(STM32_GPIO::PIN_14);
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

//uint32_t cl = 0;

#ifdef STM32_USE_RTOS
void ISR::SysTickTimer()
{
    //if (++cl == (1000*100))
    //{
        //xprintf("ProcWorker stack slack: %d\n\r", ProcWorker.stack_slack());
        //xprintf("Proc2 stack slack: %d\n\r", Proc2.stack_slack());
    //}
    OS::system_timer_isr();
    OS::raise_context_switch();
}
#endif //STM32_USE_RTOS
