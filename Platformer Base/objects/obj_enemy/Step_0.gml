vspeed = vspeed + 0.5;

if(place_meeting(x + hspeed,y,obj_wall)){
	while(!place_meeting(x + sign(hspeed),y,obj_wall)){
		x = x + sign(hspeed);
	}	
	
	hspeed = hspeed * -1;
}

if(place_meeting(x,y + vspeed,obj_wall)){
	
	while(!place_meeting(x,y + sign(vspeed),obj_wall)){
		y = y + sign(vspeed);
	}	
	vspeed = 0;
}

if(!place_meeting(x + 32, y + 32, obj_wall)) && (!place_meeting(x - 32, y + 32, obj_wall)){
	hspeed = 0;
}

if(!place_meeting(x + 32, y + 32, obj_wall)) || (!place_meeting(x - 32, y + 32, obj_wall)){
	hspeed = hspeed * -1;
}