audio_play_sound(aud_hit, 1, 0);
while(impact > 0){
	instance_create_layer(x, y, "Instances", obj_stomp_ground);
	impact--;
}
instance_destroy();