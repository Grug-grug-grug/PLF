/// @description Insert description here
// You can write your code in this editor

counter_all -= 1;

if counter_all > 998 and counter_all < 1000
{
	instance_create_layer(10,10,"Instances",obj_baddie_1_spawn_left);
}

if counter_all > 900 and counter_all < 902
{
	instance_destroy(obj_baddie_1_spawn_left);
}

if counter_all > 900 and counter_all < 902
{
	instance_create_layer(0,0,"Instances",obj_baddie_1_spawn_right);
}
