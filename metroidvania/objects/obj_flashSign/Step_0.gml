/// @desc ???

if !global.jump { sprite_index = noone};
else if global.time_left > 12 and global.time_left < 24
{
	
	sprite_index = spr_sign_instruction;
	mask_index = spr_sign_instruction;

}
else if global.time_left < 30 and global.time_left > 23
{
	
	sprite_index = noone;
	mask_index = noone;
	
}
else if global.time_left > 6 and global.time_left < 13
{
	sprite_index = noone;
	mask_index = noone;
}




