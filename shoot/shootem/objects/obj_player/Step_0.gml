/// @description Insert description here
// You can write your code in this editor

var _hmove = (- keyboard_check(vk_left) + keyboard_check(vk_right)) * hsp;
var _vmove = (- keyboard_check(vk_up) + keyboard_check(vk_down))* hsp*.8;


move_and_collide(_hmove,_vmove,obj_wall);

if keyboard_check(vk_space) and shoot_rate < 0
{
	var _new_bullet = instance_create_layer(self.x,self.y,"Instances",obj_bullet_me)
	_new_bullet.bullet_str = 1;
	shoot_rate = 3;
}
shoot_rate -= 1;

if keyboard_check(vk_space) and keyboard_check(vk_up) and _hmove == 0
{
	super_counter += 1;
}
else
{
	super_counter = 0;
}

if super_counter > 40
{
	shoot_rate = 50;
	obj_bullet_me.bullet_str = 15;
	image_alpha = 0.1;
}
else if shoot_rate == 0
{	
	
	image_alpha = 1;
}


global.points += 100;
var lay_id = layer_get_id("death");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id, (5-hp)/40);

if hp == 0 
{
	alarm[1] = 100;

	}