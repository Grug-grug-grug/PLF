/// @desc ???


//draw_text(x-10,y-10, global.success_jumps);

if  global.jump_failed > 0
{

	draw_sprite_ext(spr_profile_cypher,1,x-1250,y-90,1.5,1.5,random_range(-20,30),c_white,1);

}
else if  global.success_jumps > 3
{

	draw_sprite_ext(spr_profile_cypher,3,x-1250,y-90,1.5,1.5,random_range(-5,5),c_white,1);

}
else
{
	draw_sprite_ext(spr_profile_cypher,0,x-1250,y-90,1.5,1.5,0,c_white,1);
}

draw_text(x-1250,y-20,"Jumps:");
draw_text(x-1100,y-20,global.success_jumps);
draw_text(x-1250,y-40,"Collected:");
draw_text(x-1100,y-40,global.collectable);

draw_text(x-1100,y-60,global.test);

// draw timer 
if global.time_left > 12 and global.time_left < 30
{
	draw_sprite_ext(spr_timer,0,x-200,y+400,7,7,random_range(-5,5),c_white,1);
}


if global.time_left > 6 and global.time_left < 13
{
	draw_sprite_ext(spr_timer,1,x-200,y+400,7,7,0,c_white,1);
}

if global.time_left < 7 and global.time_left > 0
{
	draw_sprite_ext(spr_timer,2,x-200,y+400,7,7,0,c_white,1);

}

if global.time_left > 29 and global.time_left < 36
{
	draw_sprite_ext(spr_timer,7,x-200,y+400,7,7,0,c_white,1);

}


if global.time_left > 35 and global.time_left < 42
{
	draw_sprite_ext(spr_timer,6,x-200,y+400,7,7,0,c_white,1);

}

if global.time_left > 41 and global.time_left < 48
{
	draw_sprite_ext(spr_timer,5,x-200,y+400,7,7,0,c_white,1);

}

if global.time_left > 47 and global.time_left < 56
{
	draw_sprite_ext(spr_timer,4,x-200,y+400,7,7,0,c_white,1);

}
if global.time_left > 55
{
	draw_sprite_ext(spr_timer,3,x-200,y+400,7,7,0,c_white,1);

}


