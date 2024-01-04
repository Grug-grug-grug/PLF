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
if actual_time < 5
{
water_alarm = int64(random_range(10,20));
}
else if actual_time > 5 and actual_time < 7
{
	water_alarm = int64(random_range(10,12));
}
else if actual_time > 8 and actual_time < 15
{
	water_alarm = int64(random_range(10,20));
}
else if actual_time > 15 and actual_time < 25
{
	water_alarm = int64(random_range(40,60));
}
else if actual_time > 25 and actual_time < 30
{
	water_alarm = int64(random_range(5,10));
}
else if actual_time > 30
{
	water_alarm = int64(random_range(2,3));
}
alarm[0] = 1;
}

