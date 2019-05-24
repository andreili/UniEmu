#include "menu.h"

Menu menu;

Menu::Menu()
{
    m_outdated = true;
    m_root = nullptr; // TODO
    m_current = m_root;
}

void Menu::render_rec(menu_rec_t* rec)
{
    // TODO
    if (rec->parent != nullptr)
        render_rec(static_cast<menu_rec_t*>(rec->parent));
}
