/// @desc ???

if instance_exists(obj_player) == true
{
if obj_player.hit == false {level_timer += delta_time / 1000000}
}
if level == 1
{
	total_shield_health = 0;
	current_shield_health = 0;
	total_number_of_hacks = 3;
	number_of_repetitions_required = 8;
}
else if level == 2
{
	total_number_of_hacks = 3;
	number_of_repetitions_required = 5;
}

