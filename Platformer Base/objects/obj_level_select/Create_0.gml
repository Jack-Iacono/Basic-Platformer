gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width// + 200;
menu_y = gui_height - gui_margin;
menu_x_target  =gui_width - gui_margin;
menu_speed = 25; //Lower is faster
menu_font = f_menu;
menu_itemheight = font_get_size(f_menu);
menu_commited = -1;
menu_control = true;

menu[4] = "Test Room 1";
menu[3] ="Test Room 2";
menu[2] = "Test Room 3";
menu[1] = "Test Room 4";
menu[0] = "Test Room 5";

menu_items = array_length_1d(menu);
menu_cursor = 4;