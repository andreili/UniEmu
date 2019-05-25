#ifndef MAIN_H
#define MAIN_H

#include "stm32_inc.h"
#include "xprintf.h"
#include "updater.h"
#include "sddriver.h"
#include "mscdriver.h"
#ifdef STM32_USE_USBH_HID
    #include "usbh_hid.h"
#endif //STM32_USE_USBH_HID
#ifdef STM32_USE_USBH_MSC
    #include "usbh_msc.h"
#endif //STM32_USE_USBH_MSC

#define LED_PORT gpiob
#define LED1_PIN STM32_GPIO::PIN_3
#define LED2_PIN STM32_GPIO::PIN_4
#define LED3_PIN STM32_GPIO::PIN_5

#define UART uart3

extern void (*main_fw_jump)(void);

#ifdef STM32_USE_USB
extern TCHAR msc_path[2][4];
extern FATFS MSCFatFS[2];
extern MSCDriver msc_driver[2];
#endif
#ifdef STM32_USE_SD
extern TCHAR SD_path[4];
extern SDDriver sd_driver;
extern FATFS SDFatFS;
#endif

#ifdef STM32_USE_USB
extern USBH_HID usbh_hid[2];
extern USBH_MSC usbh_msc[2];
#endif

typedef OS::process<OS::pr2, 1024> TProcWorker;
#ifndef STM32_USE_USB
typedef OS::process<OS::pr1, 1024> TProcUSBNULL;
extern TProcUSBNULL ProcUSBNULL;
#endif
extern TProcWorker ProcWorker;

void USBH_init();
void FAT_init();

#endif //MAIN_H
