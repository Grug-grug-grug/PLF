/// @description Insert description here
// You can write your code in this editor

y = y + 2;

counter -= 1;

if counter == 0
{

	var _newObj = instance_create_layer(x,y,"Instances",obj_bullet_spread);
	_newObj.shoot_angle = spiral_shot;

	counter = 3 ;
	spiral_shot += 10;

}

if y > 800
{
	instance_destroy();
}

scr_hit(obj_bullet_me);
scr_hit_player(obj_player);

scr_hit_player(obj_shield);