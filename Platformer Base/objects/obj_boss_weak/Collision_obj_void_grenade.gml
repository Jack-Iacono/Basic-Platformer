if(inv = false && obj_player.vspeed > 11){
	hp--;
	inv = true;
	alarm[0] = 3 * room_speed;
	obj_boss.sprite_index = spr_boss_hurt;
}