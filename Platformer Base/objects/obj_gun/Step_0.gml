xx = mouse_x - obj_player.x;
yy = obj_player.y - mouse_y;

//Don't worry bout it jack
w = xx;
h = yy;

angle = darctan2(h , w);
image_angle = darctan2(h , w);



if(image_angle > 90 || image_angle < -90){
	sprite_index = spr_gun_L;
}else{
	sprite_index = spr_gun_R;
}