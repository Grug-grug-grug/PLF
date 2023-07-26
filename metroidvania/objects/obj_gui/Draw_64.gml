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

draw_text(x-1250,y-120,global.success_jumps);





