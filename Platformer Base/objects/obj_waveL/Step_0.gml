image_alpha += -0.03;
vspeed = vspeed + 0.5;

if(image_alpha <= 0)
{
	instance_destroy();
}

if(place_meeting(x,y + vspeed,obj_wall)){
	
	while(!place_meeting(x,y + sign(vspeed),obj_wall)){
		y = y + sign(vspeed);
	}	
	vspeed = 0;
}

if(!place_meeting(x + 32, y + 32, obj_wall)) || (!place_meeting(x - 32, y + 32, obj_wall)){
	instance_destroy();
}