if(grenade_toss = 1){
	if(grenade = 1){
		instance_create_layer(x + 16, y, "Instances", obj_void_grenade);
	}else if(grenade = 2){
		instance_create_layer(x+16, y, "Instances", obj_volt_grenade);
	}else if(grenade = 3){
		instance_create_layer(x+16, y, "Instances", obj_flare_grenade);
	}
}