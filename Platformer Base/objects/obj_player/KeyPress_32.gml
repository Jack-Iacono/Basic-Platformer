if(!place_meeting(x,y+1,obj_wall)) && (dash > 0){

	if(sprite_index = spr_player_right) || (sprite_index = spr_player_idleR){
		vspeed++;
			hspeed = 20;
			audio_play_sound(aud_dash, 1, 0);
	}
	
	if(sprite_index = spr_player_left) || (sprite_index = spr_player_idleL){
		vspeed++;
			hspeed = -20;
			audio_play_sound(aud_dash, 1, 0);
	}
	
 dash--;
}