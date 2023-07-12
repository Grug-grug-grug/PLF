if global.time_left > 12 and global.time_left < 24
{
	
	sprite_index = spr_flash;
	mask_index = spr_flash;

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
else
{

	sprite_index = noone;
	mask_index = noone;
} 