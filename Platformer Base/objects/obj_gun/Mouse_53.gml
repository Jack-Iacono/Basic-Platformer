if(shoot){
	shoot = false;
	alarm[0] = 15;
	instance_create_layer(x,y,"Instances", obj_bullet);
	audio_play_sound(aud_gunshot, 1, 0);
		
	with(obj_player){
		motion_add((180-obj_gun.image_angle) * -1,5);
	}
}