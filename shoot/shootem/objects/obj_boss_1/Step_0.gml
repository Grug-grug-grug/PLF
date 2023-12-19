/// @description Insert description here
// You can write your code in this editor


if phase == 1
{
	
	// background 
	global.boss_phase = 1
	

	if dir == 0
	{
		x += hspd * (global.rot_speed)/5
	}
	else
	{
		x -= hspd * (global.rot_speed)/5
	}
	
	if obj_boss_1.x < 50
	{
		dir = 0;
	}
	if obj_boss_1.x > 1200
	{
		dir = 1;
	}
	global.bossx = x;

	counter_spawn -= 1;

	if counter_spawn == 0
	{
		if global.rot_speed < 3
		{
			
			instance_create_layer(x+55,y+32,"Instances",obj_baddie_1)
	
			counter_spawn = 100 - global.rot_speed * 2 ;
		}
		else if global.rot_speed < 6
		{
			instance_create_layer(x+55,y+32,"Instances",obj_baddie_spiral_multiple);
			counter_spawn = 250 - global.rot_speed * 2 ;
		}
		else if global.rot_speed > 5
		{
			instance_create_layer(x+55,y+32,"Instances",obj_baddie_spiral_single);
			counter_spawn = 150 - global.rot_speed * 2 ;
		}
	}
	if global.rot_speed > 8
		{
		with(obj_bullet_me)
		{
			if place_meeting(x, y, other)
			{
				
				other.hp -= self.bullet_str;
				if other.hp < 0 
				{
					other.phase = 2; 
					other.hp = 20;
				
					instance_destroy(obj_spin);
					instance_destroy(obj_beam_spawn);
				}
				instance_destroy(self);
			}
		}
		}
	global.boss_hp = hp;

	boss_spin -=  20 - hp
	image_angle = boss_spin;
}

if phase == 2
{
	global.boss_phase = 2;
	// background 
	layer_vspeed("Backgrounds_2",0);
	layer_vspeed("Backgrounds_1",0);
	layer_vspeed("Background",0);
	layer_vspeed("Backgrounds_3", 0);

	boss_spin -=  20 
	image_angle = boss_spin;
	if obj_boss_1.x < 50
	{
		dir = 0;
	}
	if obj_boss_1.x > 1200
	{
		dir = 1;
	}
	if x > 660 and x < 690
	{
		dir = 2;
	} 
	if dir == 0
	{
		x += hspd * (global.rot_speed);
	}
	else if dir == 1
	{
		x -= hspd * (global.rot_speed);
	}
	else if dir == 2
	{
		x = 680;
		instance_destroy();
		instance_create_layer(690,100,"Instances",obj_boss_2)
	}
	

}