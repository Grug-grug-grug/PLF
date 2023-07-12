/// @desc ???



if platform_time_left == 24
{

	if mask_index != noone
	{
		sprite_index = noone;
		mask_index = noone;
		
	} 
	else
	{
		sprite_index = spr_bricks_light;
		mask_index = spr_bricks_light;
	} 
}

if platform_time_left == 0
{
	platform_time_left = beat * platform_total_time;
}

platform_time_left -= 1;


//global.test = platform_time_left;