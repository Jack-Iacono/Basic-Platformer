if(vspeed > 12){
	with(other){
		instance_destroy();
		
	}
}else{
		instance_destroy();
		room_restart();
		audio_play_sound(aud_die, 1, 0);
	}
