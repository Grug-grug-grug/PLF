/// @description Insert description here
// You can write your code in this editor

counter_spawn -= 1;

if counter_spawn == 0
{
	instance_create_layer(int64(spawn_location),10,"Instances",obj_baddie_1)
	spawn_location = random_range(0,200)
	counter_spawn = 10;
}