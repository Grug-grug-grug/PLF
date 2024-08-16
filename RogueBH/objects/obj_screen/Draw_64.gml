/// @desc ???

draw_sprite_ext(spr_screen,0,0,0,w_screen,h_screen,0,noone,1)



draw_sprite(spr_hack_light_off,0,w_screen*8,h_screen*172);
draw_sprite(spr_hack_light_off,0,w_screen*18,h_screen*172);
draw_sprite(spr_hack_light_off,0,w_screen*28,h_screen*172);
		
draw_sprite(spr_hack_light_off,0,w_screen*38,h_screen*172);
		
if obj_global.completed_repetitions_required > 0
{
draw_sprite(spr_hack_light,0,w_screen*8,h_screen*172);
}
if obj_global.completed_repetitions_required > 1
{
draw_sprite(spr_hack_light,0,w_screen*18,h_screen*172);
}
if obj_global.completed_repetitions_required > 2
{
draw_sprite(spr_hack_light,0,w_screen*28,h_screen*172);
}
if obj_global.completed_repetitions_required > 2
{
draw_sprite_ext(spr_hack_light,0,w_screen*38,h_screen*172,1,1,0,c_white,img_alp);
}
	
draw_sprite(spr_life_light,0,w_screen*210,h_screen*172);
draw_sprite(spr_life_light,0,w_screen*220,h_screen*172);	
draw_sprite(spr_life_light,0,w_screen*230,h_screen*172);
draw_sprite(spr_life_light,0,w_screen*240,h_screen*172);
draw_sprite(spr_life_light,0,w_screen*250,h_screen*172);
draw_sprite(spr_life_light,0,w_screen*260,h_screen*172);
draw_sprite(spr_life_light,0,w_screen*270,h_screen*172);
draw_sprite(spr_life_light,0,w_screen*280,h_screen*172);

if obj_global.player_health < 8
{

draw_sprite(spr_life_light_off,0,w_screen*280,h_screen*172);
}
if obj_global.player_health < 7
{

draw_sprite(spr_life_light_off,0,w_screen*270,h_screen*172);
}
if obj_global.player_health < 6
{

draw_sprite(spr_life_light_off,0,w_screen*260,h_screen*172);
}
if obj_global.player_health < 5
{

draw_sprite(spr_life_light_off,0,w_screen*250,h_screen*172);
}
if obj_global.player_health < 4
{

draw_sprite(spr_life_light_off,0,w_screen*240,h_screen*172);
}
if obj_global.player_health < 3
{

draw_sprite(spr_life_light_off,0,w_screen*230,h_screen*172);
}
if obj_global.player_health < 2
{

draw_sprite(spr_life_light_off,0,w_screen*220,h_screen*172);

draw_sprite_ext(spr_life_light_off,0,w_screen*210,h_screen*172,1,1,0,c_white,img_alp);
}
if obj_global.player_health == 0
{
	draw_sprite(spr_life_light_off,0,w_screen*210,h_screen*172);
	draw_sprite_ext(spr_life_light,0,w_screen*210,h_screen*172,1,1,0,c_white,img_alp);
	draw_sprite_ext(spr_life_light,0,w_screen*280,h_screen*172,1,1,0,c_white,img_alp);
	draw_sprite_ext(spr_life_light,0,w_screen*270,h_screen*172,1,1,0,c_white,img_alp);
	draw_sprite_ext(spr_life_light,0,w_screen*260,h_screen*172,1,1,0,c_white,img_alp);
	draw_sprite_ext(spr_life_light,0,w_screen*250,h_screen*172,1,1,0,c_white,img_alp);
	draw_sprite_ext(spr_life_light,0,w_screen*240,h_screen*172,1,1,0,c_white,img_alp);
	draw_sprite_ext(spr_life_light,0,w_screen*230,h_screen*172,1,1,0,c_white,img_alp);
	draw_sprite_ext(spr_life_light,0,w_screen*220,h_screen*172,1,1,0,c_white,img_alp);
}




