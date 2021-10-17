draw_set_font(f_grenade);

if(obj_player.grenade = 1){
	draw_sprite(spr_void_menu, 1, x, y);
}else if(obj_player.grenade = 2){
	draw_sprite(spr_volt_menu, 1, x, y);
}else if(obj_player.grenade = 3){
	draw_sprite(spr_flare_menu, 1, x, y);
}else{
	draw_sprite(spr_empty_menu, 1, x, y);
}