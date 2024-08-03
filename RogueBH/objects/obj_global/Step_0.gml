/// @desc ???

if instance_exists(obj_player) == true
{
if obj_player.hit == false {level_timer += delta_time / 1000000}
}
else if room == rm_initialise
{
	destroyed_enemy = 0
		level_timer = 0
}

if level == "tutorial"
{
	
	total_shield_health = 0;
	current_shield_health = 0;
	total_number_of_hacks = 3;
	number_of_repetitions_required = 3;
}
else if level == "level1"
{
	
	total_number_of_hacks = 3;
	number_of_repetitions_required = 5;
}

