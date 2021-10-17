if(!place_meeting(x,y + sign(vspeed), obj_wall)){
	if(vspeed > 12){
		instance_create_layer(x + 16, y, "Instances", obj_stomp);
	}
}

if(hspeed > 4){
	instance_create_layer(x + 16, y, "Instances", obj_dash_right);
	}

if(hspeed < -4){
	instance_create_layer(x + 16, y, "Instances", obj_dash_left);
}