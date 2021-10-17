instance_destroy();

while(particle_repeat > 0){
	instance_create_layer(x + 16, y, "Instances", obj_sparkle);
	particle_repeat--;
}