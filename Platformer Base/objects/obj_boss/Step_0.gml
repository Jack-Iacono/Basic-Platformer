if(vspeed < 6){
vspeed += 0.1;
}

if(dead = true){
	sprite_index = spr_boss_die;
	alarm[0] = 120;
}

//Horizontal Collision
if(place_meeting(x + hspeed,y,obj_wall)){
	while(!place_meeting(x + sign(hspeed),y,obj_wall)){
		x = x + sign(hspeed);
	}	
	hspeed *= -1;
}

//Vertical Collision
if(place_meeting(x,y + vspeed,obj_wall)){
	while(!place_meeting(x,y + sign(vspeed),obj_wall)){
	y += sign(vspeed) * -1;
	vspeed *= sign(vspeed) * -1;
	}
}

instance_create_layer(x + 64, y + 32, "Instances", obj_tracer);