/// @desc ???
/// Level 1

if obj_level.level == 1
{
if actual_time < 12
{
water_alarm = int64(random_range(5,9));
}
else if actual_time > 12 and actual_time < 20
{
	water_alarm = int64(random_range(6,9));
}
else if actual_time > 25 
{
	water_alarm = int64(random_range(5,10));
}
alarm[0] = 1;
}

/// Level 2 

if obj_level.level == 2
{
	if water_speed == "slow"
	{
		water_alarm = int64(random_range(40,50));
	}
	else if water_speed == "fast"
	{
		water_alarm = int64(random_range(2,4));
	}
	else if water_speed == "medium"
	{
		water_alarm = int64(random_range(10,20));
	}
alarm[0] = 1;
}

if obj_level.level == 3
{
	if water_speed == "slow"
	{
		water_alarm = int64(random_range(40,50));
	}
	else if water_speed == "fast"
	{
		water_alarm = int64(random_range(2,4));
	}
	else if water_speed == "medium"
	{
		water_alarm = int64(random_range(10,20));
	}
alarm[0] = 1;
}
