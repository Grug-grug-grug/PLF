/// @desc ???


var _x = irandom_range(140,460)
var _y = irandom_range(-140,-320)
	

if (_x < 220 or _x > 270) and (_y < -300 or _y > -170)
{
	with(instance_create_layer(_x, _y, "Instances",obj_shooter_spiral))
	
	{
		randomize();
		// which direction to start shooting, dont need to change
		timer = int64(random_range(0,360));

		// direction 1 is clockwise, -1 is anticlockwise
		spin_direction = 1;

		// how fast to spin
		spin_speed = 6;

		// speed of the bullets
		spd = 3;

		// how frequently to shoot
		alarmspeed = 10 ;

	}
	instance_create_layer( _x,_y,"Bullets",obj_enemy_spawn_static)
alarm[0] = 70 
}
else
{
	alarm[0] = 1
}






