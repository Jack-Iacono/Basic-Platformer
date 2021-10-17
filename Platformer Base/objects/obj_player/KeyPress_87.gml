if(double_jump > 0)&& (!place_meeting(x,y + sign(vspeed), obj_wall)){
	if(honey && honey_direct = 1){
		x -= 1;
	}else if(honey && honey_direct = -1){
		x += 1;
	}
	vspeed = jump_height - 1;
	double_jump--;
	
	if(!place_meeting(x, y+1, obj_wall)){
		instance_create_layer(x , y, "Instances", obj_jump_cloud);		
	}
	
	audio_play_sound(aud_player_jump, 1, 0);
}

if(place_meeting(x, y+1, obj_launchpad)){
	vspeed = jump_height * 2;
}else if(place_meeting(x, y+1, obj_wall)){
	vspeed = jump_height;
	audio_play_sound(aud_player_jump, 1, 0);
}