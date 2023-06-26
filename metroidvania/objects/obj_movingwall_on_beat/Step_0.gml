/// @desc ???



if platform_time_left == 24
{

	if mask_index != spr_blank
	{
		sprite_index = spr_blank;
		mask_index = spr_blank;
		
	} 
	else
	{
		sprite_index = spr_disappear;
		mask_index = spr_disappear;
	} 
}

if platform_time_left == 0
{
	platform_time_left = beat * platform_total_time;
}

platform_time_left -= 1;


global.test = platform_time_left;