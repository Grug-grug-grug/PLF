/// @desc ???
if global.jump_on_2 == true
{
if !global.jump { image_alpha =0};
else if global.time_left > 12 and global.time_left < 24
{
	image_alpha = 1;
	//sprite_index = spr_sign_instruction;
	mask_index = noone;

}
else if global.time_left < 30 and global.time_left > 23
{
	image_alpha =0;
	//sprite_index = noone;
	mask_index = noone;
	
}
else if global.time_left > 6 and global.time_left < 13
{
	image_alpha = 0;
	//draw_set_alpha(0);
	//sprite_index = noone;
	mask_index = noone;
}
}
else
{
	image_alpha = 0;
}



