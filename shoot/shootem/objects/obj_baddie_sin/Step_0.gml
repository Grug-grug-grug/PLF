/// @description Insert description here
// You can write your code in this editor

curvature += 0.1;

y = y - 8*sin(curvature);
x += (4 + hsp);

counter -= 1;

if counter == 0
{
	{
		var newObj = instance_create_layer(self.x + 16, self.y + 16,"Instances",obj_bullet_spread)
		newObj.shoot_angle = 0;
		counter = int64(random_range(20,80));
	}

}

if y > 800
{
	instance_destroy();
}

scr_hit(obj_bullet_me);
scr_hit_player(obj_player);
scr_hit_player(obj_shield);