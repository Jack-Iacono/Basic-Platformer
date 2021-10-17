if(inv = false && obj_player.vspeed > 8){
	hp--;
	inv = true;
	alarm[0] = 3 * room_speed;
	obj_boss.sprite_index = spr_boss_hurt;
}

if(obj_player.x > x){
	obj_player.hspeed = 7;
}else if(obj_player.x < x){
	obj_player.hspeed = -12;
}

if(obj_player.vspeed > 0){
	obj_player.vspeed = -12;
}

