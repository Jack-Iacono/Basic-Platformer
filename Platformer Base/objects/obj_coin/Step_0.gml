if(place_meeting(x,y,obj_player)){
	audio_play_sound(aud_coin, 1, 0);
	score = score + 10;
	instance_destroy();
}