if(grenade < 4){
	grenade++;
}else if(grenade = 4){
	grenade = 1;
}

instance_create_layer(x + 3, y-28, "Instances", obj_grenade_text);