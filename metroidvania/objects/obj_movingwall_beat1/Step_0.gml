/// @desc ???


if platform_time_left == 24 + beat
{

	if mask_index != noone
	{
		sprite_index = noone;
		mask_index = noone;
		
	} 
	else
	{
		sprite_index = spr_bricks_dark;
		mask_index = spr_bricks_dark;
	} 
}

if platform_time_left == 0
{
	platform_time_left = beat * platform_total_time;
}

platform_time_left -= 1;


