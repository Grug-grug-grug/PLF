/// @desc ???
randomize();
/*
j = obj_global.sublevel;
for(i = 0; i < j; ++i)
	{
	var _x = irandom_range(250,260)
	var _y = irandom_range(170,180)

	with(instance_create_layer(_x, _y, "Instances",obj_shooter_follow_player))
	{
		spd = random_range(1,2);
		alarmspeed = random_range(200,300);
	}
}
*/
if obj_global.sublevel > 3
{
	var _x = irandom_range(250,250)
	var _y = irandom_range(150,150)

	with(instance_create_layer(_x, _y, "Instances",obj_shooter_follow_player))
	{
		spd = random_range(1,2);
		alarmspeed = random_range(200,300);
	}
}
if obj_global.sublevel > 4
{
	var _x = irandom_range(340,340)
	var _y = irandom_range(200,200)

	with(instance_create_layer(_x, _y, "Instances",obj_shooter_follow_player))
	{
		spd = random_range(1,2);
		alarmspeed = random_range(200,300);
	}
}
if obj_global.sublevel > 5
{
	var _x = irandom_range(250,250)
	var _y = irandom_range(200,200)

	with(instance_create_layer(_x, _y, "Instances",obj_shooter_follow_player))
	{
		spd = random_range(1,2);
		alarmspeed = random_range(200,300);
	}
}
if obj_global.sublevel > 6
{
	var _x = irandom_range(340,340)
	var _y = irandom_range(150,150)

	with(instance_create_layer(_x, _y, "Instances",obj_shooter_follow_player))
	{
		spd = random_range(1,2);
		alarmspeed = random_range(200,300);
	}
}






