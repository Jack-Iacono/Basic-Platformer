stomp_repeat = 10;

if(hascontrol){
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

if(hspeed > -5) && (hspeed < 5){
hspeed = (right - left) * walk_speed;
}

if(place_meeting(x,y+1,obj_wall)){
	hspeed = hspeed - sign(hspeed);
}

if(place_meeting(x+1,y,obj_honey) || place_meeting(x-1,y,obj_honey)){
	if(vspeed > 0){
	vspeed = 0;
	vspeed += grav / 2;
	}else if(vspeed < 0){
	vspeed += grav * 2;	
	}
	honey = true;
	double_jump = jump_max;
	dash = dash_max;
}else if(vspeed < 18){
	vspeed = vspeed + grav;
}

if(place_meeting(x+1,y,obj_honey)){
	honey_direct = 1;
}else if(place_meeting(x-1,y,obj_honey)){
	honey_direct = -1;
}

if(!place_meeting(x+1,y,obj_honey) && !place_meeting(x-1,y,obj_honey)){
	honey = false;
}

if(left){
	sprite_index = spr_player_left;
	facing = 0;
}else if(right){
	sprite_index = spr_player_right;
	facing = 1;
}
}else{
	right = 0;
	left = 0;
}

//Horizontal Collision

if(place_meeting(x + hspeed,y,obj_wall)){
	while(!place_meeting(x + sign(hspeed),y,obj_wall)){
		x = x + sign(hspeed);
	}	
	
	hspeed = 0;
}

//Vertical Collision

if(place_meeting(x,y + vspeed,obj_wall)){

	if(vspeed > 12 && stone = 1){
		instance_create_layer(x + 16, y + 16, "Instances", obj_waveR);
		instance_create_layer(x + 16, y + 16, "Instances", obj_waveL);
	}else if(vspeed >12){
		while(stomp_repeat > 0){
		instance_create_layer(x + 16, y + 32, "Instances", obj_stomp_ground);
		stomp_repeat--;
		}
	}
	
	if(slime = 1 && vspeed >= 12){
		if(place_meeting(x,y,obj_wall)){
		
		vspeed = -1 * (vspeed / 1.2);

		}
		
		while(!place_meeting(x,y + sign(vspeed),obj_wall)){
		y = y + sign(vspeed);	
	}
	}else{
		while(!place_meeting(x,y + sign(vspeed),obj_wall)){
		y = y + sign(vspeed);	
	}
	
	vspeed = 0;
	}
}

if(place_meeting(x, y + 5, obj_wall)){
	double_jump = jump_max;
	dash = dash_max;
}

//Animation Stuff

if(hspeed = 0){
	if(sprite_index = spr_player_right){
		sprite_index = spr_player_idleR;
	}else if(sprite_index = spr_player_left){
		sprite_index = spr_player_idleL;
	}
}


//Walking Stuff

if(hspeed < -4){
	hspeed = hspeed + 1;
}

if(hspeed > 4){
	hspeed = hspeed - 1;
}
