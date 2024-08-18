/// @desc ???

/*
draw_sprite_ext(spr_mouth,sprite_mouth,x,y,1,1,dire+90,c_white,1);
draw_sprite_ext(spr_eye,sprite_left_eye,x,y,1,1,dire+90,c_white,1);
draw_sprite_ext(spr_eye,sprite_right_eye,x,y,-1,1,dire+90,c_white,1);
*/

draw_sprite_ext(spr_player_alt,sprite_increment,x,y,-1,1,dire+90,c_white,1);

var _spd_y = -keyboard_check(ord("W")) + keyboard_check(ord("S"));
var _spd_x = -keyboard_check(ord("A")) + keyboard_check(ord("D"));

draw_sprite(spr_player_alt_Centre,0,x,y);


