/// @description Insert description here
// You can write your code in this editor

counter_spawn -= 1;

if counter_spawn == 0
{
	instance_create_layer(int64(spawn_location),10,"Instances",obj_spin)
	spawn_location = random_range(0,1000)
	counter_spawn = 10;
}