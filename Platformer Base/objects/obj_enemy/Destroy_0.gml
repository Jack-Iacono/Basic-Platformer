while(particle_repeat > 0){
	instance_create_layer(x + 32, y + 16, "Instances", obj_squish_enemy);
	particle_repeat--;
}