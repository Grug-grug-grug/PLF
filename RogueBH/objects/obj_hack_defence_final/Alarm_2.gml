/// @desc ???





var _x = irandom_range(140,460)
var _y = irandom_range(-140,-320)
	
if (_x < 220 or _x > 270) and (_y < -300 or _y > -170)
{
	with(instance_create_layer(_x, _y, "Instances",obj_runner))
	
	{
		runner_speed = random_range(1,2);
		hit_wall_die = true
		s_spd = 500;
	}
	
	instance_create_layer( _x,_y,"Bullets",obj_enemy_spawn_static)
alarm[2] = 30 

}
else
{
	alarm[2] = 1
}








