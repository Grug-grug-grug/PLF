/// @description Insert description here
// You can write your code in this editor


x = x + parry * 5 * sin(shoot_angle) ;
y = y + parry * 5 * cos(shoot_angle);

if y > 1000 or y < -10
{
	instance_destroy();
}

if parry == 1
{
if place_meeting(x,y,obj_parry) {scr_hit_parry(obj_parry)}
scr_hit_player(obj_player);
scr_hit_player(obj_shield);
}
if parry == -1
{
	sprite_index = spr_bullet_1;
}