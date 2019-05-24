#ifndef MENU_H
#define MENU_H

#include <inttypes.h>

class Menu
{
public:
    typedef struct
    {
        //
    } list;
    enum class EElementType: uint8_t
    {
        //
    };
    typedef struct
    {
        uint8_t x;
        uint8_t y;
        uint8_t w;
        uint8_t h;
        void*   parent;
    } menu_rec_t;

    Menu();

    inline bool is_outdated() { return m_outdated; }
    inline void render() { render_rec(m_current); m_outdated = true; }
private:
    bool        m_outdated;
    menu_rec_t* m_root;
    menu_rec_t* m_current;

    void render_rec(menu_rec_t* rec);
};

extern Menu menu;

#endif // MENU_H
