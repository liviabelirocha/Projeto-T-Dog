//Variaveis de layout do Menu

#macro SAVEFILE "Deish.sav"

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width +200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "Iniciar Sofrimento!";
menu[1] = "Que Ota!";
menu[0] = "Vai Cholar?";

menu_items = array_length_1d(menu);
menu_cursor = 2;
