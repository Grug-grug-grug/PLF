/// @description Insert description here
// You can write your code in this editor

y = y + 2;

counter -= 1;

if counter == 0
{
	if global.rot_speed > 2
	{
		for (var _i = 0; _i <3; _i++)
		{
		var newObj = instance_create_layer(x,y,"Instances",obj_bullet_spread);
		

		}
		counter = 50 - global.rot_speed*4;
	}
	else
	{
		var newObj = instance_create_layer(self.x + 16, self.y + 16,"Instances",obj_bullet_spread)
		newObj.shoot_angle = 0;
		counter = 50;
	}
	
}

if y > 800
{
	instance_destroy();
}

scr_hit(obj_bullet_me);
scr_hit_player(obj_player);
scr_hit_player(obj_shield);