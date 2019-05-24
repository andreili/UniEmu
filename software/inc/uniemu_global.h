#ifndef UNIEMU_GLOBAL_H
#define UNIEMU_GLOBAL_H

#include "scmRTOS.h"

#define UNI_CTRL_PORT gpiod
#define UNI_CTRL_WRN_PIN STM32_GPIO::PIN_0
#define UNI_CTRL_RDN_PIN STM32_GPIO::PIN_1
#define UNI_CTRL_WRITE_ON() UNI_CTRL_PORT.pin_OFF(UNI_CTRL_WRN_PIN)
#define UNI_CTRL_WRITE_OFF()UNI_CTRL_PORT.pin_ON (UNI_CTRL_WRN_PIN)
#define UNI_CTRL_READ_ON()  UNI_CTRL_PORT.pin_OFF(UNI_CTRL_RDN_PIN)
#define UNI_CTRL_READ_OFF() UNI_CTRL_PORT.pin_ON (UNI_CTRL_RDN_PIN)

#define UNI_ADDR_PORT gpiod
#define UNI_ADDR_SET(addr) UNI_ADDR_PORT.pins_write_mask((addr << 6), 0xFFC0)

#define UNI_DATA_PORT gpioe
#define UNI_DATA_SET(data) UNI_DATA_PORT.pins_write(data)


#define UNI_ADDR_OVERLAY_ADDR 0x0000
#define UNI_ADDR_OVERLAY_DATA 0x0001
#define UNI_ADDR_OVERLAY_CTRL 0x0002

#define UNI_USE_OVERLAY

typedef OS::process<OS::pr0, 100> TProcOverlay;
extern TProcOverlay ProcOverlay;

#endif
