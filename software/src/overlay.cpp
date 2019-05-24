#include "overlay.h"
#include <cstring>
#include "stm32_inc.h"
#include "xprintf.h"

#ifdef UNI_USE_OVERLAY

uint16_t                Overlay::m_mem[OVERLAY_MEM_Y * OVERLAY_MEM_X];
Overlay::overlay_ctrl_t Overlay::m_ctrl;

void Overlay::init()
{
    memset(m_mem, 0xf5, OVERLAY_MEM_X * OVERLAY_MEM_Y * sizeof(uint16_t));

    // set overlay visibled
    m_ctrl.set.ov_show = true;
    send_ctrl();
}

void Overlay::OS_exec()
{
    reset_addr();

    UNI_ADDR_SET(UNI_ADDR_OVERLAY_DATA);
    for (uint16_t x=0 ; x<OVERLAY_MEM_X ; ++x)
        for (uint16_t y=0 ; y<OVERLAY_MEM_Y ; ++y)
        {
            uint16_t addr = (x * OVERLAY_MEM_Y) + y;
            UNI_DATA_SET(m_mem[addr]);
            UNI_CTRL_WRITE_ON();
            UNI_CTRL_WRITE_OFF();
        }
}

void Overlay::send_ctrl()
{
    UNI_ADDR_SET(UNI_ADDR_OVERLAY_CTRL);
    UNI_DATA_SET(m_ctrl.data);
    UNI_CTRL_WRITE_ON();
    UNI_CTRL_WRITE_OFF();
}

void Overlay::reset_addr()
{
    UNI_ADDR_SET(UNI_ADDR_OVERLAY_ADDR);
    UNI_DATA_SET(0);
    UNI_CTRL_WRITE_ON();
    UNI_CTRL_WRITE_OFF();
}

TProcOverlay ProcOverlay;

namespace OS
{
    template <>
    OS_PROCESS void TProcOverlay::exec()
    {
        for (;;)
        {
            Overlay::OS_exec();
            sleep(1);
        }
    }
}

#endif //UNI_USE_OVERLAY
