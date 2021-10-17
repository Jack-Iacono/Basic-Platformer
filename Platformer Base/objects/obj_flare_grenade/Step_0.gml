vspeed = vspeed + 0.3

if(bounce < 1){
	
	with(obj_player){
	grenade_toss = 1;
	}
	
	instance_create_layer(x, y, "Instances", obj_explode);
	instance_destroy();
}

if(image_alpha <= 0){
	instance_destroy();
	
	with(obj_player){
	grenade_toss = 1;
	}
}

//Horizontal Collision
if(place_meeting(x + hspeed,y,obj_wall)){
	while(!place_meeting(x + sign(hspeed),y,obj_wall)){
		x = x + sign(hspeed);
	}	
	hspeed *= -1;
	bounce--;
}

//Vertical Collision
if(place_meeting(x,y + vspeed,obj_wall)){
	while(!place_meeting(x,y + sign(vspeed),obj_wall)){
	y += sign(vspeed) * -1;
	vspeed *= sign(vspeed) * -1;
	}
	bounce--;
}

if(fade = 1){
	image_alpha += -0.05;
}