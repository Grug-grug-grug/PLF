/// @description Insert description here
// You can write your code in this editor

spinning += 2;
image_angle = spinning + 10;


rotate_x += 0.02 * global.rot_speed/5;

if rotate_x > (2*3.14)
{
	rotate_x = 0;
}
//x = 32 + obj_boss_1.x ;
x = sin(rotate_x)*100 + obj_boss_1.x;
y = cos(rotate_x)*100 + obj_boss_1.y;
global.rotatexx = cos(rotate_x);

with(obj_bullet_me)
{
	if place_meeting(x, y, other)
	{
		
		other.hp -= self.bullet_str;
		for (var _i = 0; _i <5; _i++)
		{
		var newObj = instance_create_layer(x,y,"Instances",obj_bullet_spread);
		newObj.shoot_angle = _i+3;

		}
		if other.hp < 1
		{
			instance_destroy(other)
			instance_create_layer(x,y,"Instances",obj_explosion);
			global.rot_speed += 1;
			global.sppinny_dead += 1;
		}
		instance_destroy(self);
	}
}
image_alpha = hp/5;
