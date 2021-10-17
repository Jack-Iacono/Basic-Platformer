image_alpha += -0.05;
particle_repeat = 10;

while(particle_repeat > 0){
	instance_create_layer(x, y, "Instances", obj_jump_particles);
	particle_repeat--;
}

if(image_alpha <= 0)
{
	instance_destroy();
}