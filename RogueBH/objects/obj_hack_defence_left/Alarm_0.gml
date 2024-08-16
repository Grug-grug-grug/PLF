/// @desc ???


var _x = irandom_range(-50,180)
var _y = irandom_range(140,340)

if (_x < 0 or _x > 140) and (_y < 190 or _y > 290)
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
		alarmspeed = 10 - 2 * obj_global.completed_repetitions_required;

	}
	instance_create_layer( _x,_y,"Bullets",obj_enemy_spawn_static)
alarm[0] = 70 / (obj_global.completed_repetitions_required + 1)
}
else
{
	alarm[0] = 1
}






