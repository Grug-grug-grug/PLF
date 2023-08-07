/// @desc ???

/// @desc ???
image_speed = 0;

if global.time_left > 12 and global.time_left < 30
{
	draw_sprite_ext(spr_timer,0,x-1250,y-100,1.5,1.5,0,c_white,1);
}

if global.time_left < 12 and global.time_left > 6
{
	image_index = 1;
}

if global.time_left < 6 and global.time_left > 0
{
	image_index = 2;
}

if global.time_left > 30 and global.time_left < 36
{
	image_index = 7;
}


if global.time_left > 36 and global.time_left < 42
{
	image_index = 6;
}

if global.time_left > 36 and global.time_left < 42
{
	image_index = 5;
}

if global.time_left > 42 and global.time_left < 48
{
	image_index = 4;
}
if global.time_left > 48
{
	image_index = 3;
}





