/// @description Insert description here
// You can write your code in this editor

y = y + 10;

counter -= 1;

if counter == 0
{

	var newObj = instance_create_layer(x,y,"Instances",obj_bullet_spread);
	newObj.shoot_angle = spiral_shot;

	counter = 1 ;
	spiral_shot += .1;

}

if y > 800
{
	instance_destroy();
}

scr_hit(obj_bullet_me);
scr_hit_player(obj_player);
scr_hit_player(obj_shield);