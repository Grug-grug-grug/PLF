/// @desc ???


var _x = irandom_range(-880,-500)
var _y = irandom_range(110,360)

if !(_x < -760 and _x > -615) and !(_y > 190 and _y < 280)
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






