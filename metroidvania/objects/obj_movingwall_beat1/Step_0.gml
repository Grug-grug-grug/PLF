/// @desc ???


if global.time_left == 24
{
	if platform_lasts == 0
	{
	if mask_index != noone
	{
		sprite_index = noone;
		mask_index = noone;
		platform_lasts = 2
		
	} 
	else
	{
		sprite_index = spr_bricks_dark;
		mask_index = spr_bricks_dark;
		platform_lasts = 2
	} 
	}
	else {platform_lasts -= 1};
}




