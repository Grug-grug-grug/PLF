/// @desc ???


if platform_time_left == 5
{

	if mask_index != noone
	{
		sprite_index = noone;
		mask_index = noone;
		
	} 
	else
	{
		sprite_index = spr_sign_instruction;
		mask_index = spr_sign_instruction;
	} 
}

if platform_time_left == 0
{
	platform_time_left = 10;
}

platform_time_left -= 1;


