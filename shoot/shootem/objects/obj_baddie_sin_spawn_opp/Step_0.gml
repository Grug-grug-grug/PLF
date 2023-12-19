/// @description Insert description here
// You can write your code in this editor

counter_spawn -= 1;


if counter_spawn == 0 and length_spawn > 0
{
	var _next_baddie = instance_create_layer(next_spawn,next_spawn_y,"Instances",obj_baddie_sin)
	spawn_location = random_range(0,200)
	counter_spawn = 5;
	length_spawn -= 1;
	_next_baddie.hsp = next_hsp;
}
else if length_spawn == 0
{
	counter_spawn = 100;
	length_spawn = -1;
}
else if counter_spawn == 0 and length_spawn == -1
{
	counter_spawn = 10;
	length_spawn = 20;
	next_hsp = random_range(-12,-8);
	next_spawn = random_range(1350,1450);
	next_spawn_y = random_range(280,560);
}
	