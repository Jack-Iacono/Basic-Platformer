//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard Controls
if(menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width+200;
		menu_commited = menu_cursor;
		menu_control = false;
	}
}

if(menu_x > gui_width+150) && (menu_commited != -1)
{
	switch(menu_commited)
	{
		case 4: room_goto(rm_test); break;
		case 3: room_goto(rm_test2); break;
		case 2: room_goto(rm_test3); break;
		case 1: room_goto(rm_test4); break;
		case 0: room_goto(rm_test5); break;
	}

}