#ifndef OVERLAY_H
#define OVERLAY_H

#include "uniemu_global.h"

#ifdef UNI_USE_OVERLAY

#define OVERLAY_SIZE_X 256
#define OVERLAY_SIZE_Y 256

#define OVERLAY_SIZE_MEM_X 8
#define OVERLAY_SIZE_MEM_Y 2

#define OVERLAY_MEM_X (OVERLAY_SIZE_X / OVERLAY_SIZE_MEM_X)
#define OVERLAY_MEM_Y (OVERLAY_SIZE_Y / OVERLAY_SIZE_MEM_Y)

class Overlay
{
public:
    typedef union
    {
        struct
        {
            bool    ov_show;
        } set;
        uint16_t data;
    } overlay_ctrl_t;

    static void init();
    static void OS_exec();
private:
    static uint16_t         m_mem[OVERLAY_MEM_Y * OVERLAY_MEM_X];
    static overlay_ctrl_t   m_ctrl;

    static void send_ctrl();
    static void reset_addr();
};

#endif //UNI_USE_OVERLAY

#endif // OVERLAY_H
