vspeed = vspeed + 0.3

if(image_alpha <= 0){
	instance_destroy();
	
	with(obj_player){
	grenade_toss = 1;
	}
}

if(fade = 1){
	image_alpha += -0.05;
}