// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hit(input){
with(input)
	{
		if place_meeting(x, y, other)
		{
			instance_destroy(other);
			instance_destroy();
			instance_create_layer(x,y,"Instances",obj_explosion);
			global.points += 100;
		}
	}
}

function scr_hit_player(input){
with(input)
	{
		if place_meeting(x, y, other)
		{
			instance_destroy(other);
			self.hp -= 1;
			global.points -= 10000;
		}
	}
}

function scr_hit_parry(input){
with(input)
	{
		if place_meeting(x, y, other)
		{
			var _new_angle = other.shoot_angle;
			var _new_bullet = instance_create_layer(other.x,other.y,"Instances",obj_bullet_me)
			_new_bullet.parry = - 1;
			_new_bullet.shoot_angle = _new_angle;
			_new_bullet.sprite_index = spr_bullet_parry;
			_new_bullet.bullet_str = 50;
			obj_shield.hp = 5;
			instance_destroy(other);

			global.points += 100000;
		}
	}
}
