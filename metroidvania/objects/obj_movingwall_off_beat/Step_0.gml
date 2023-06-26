/// @desc ???


if platform_time_left == 24 + beat
{

	if mask_index != spr_blank
	{
		sprite_index = spr_blank;
		mask_index = spr_blank;
		
	} 
	else
	{
		sprite_index = spr_off_beat;
		mask_index = spr_off_beat;
	} 
}

if platform_time_left == 0
{
	platform_time_left = beat * platform_total_time;
}

platform_time_left -= 1;


