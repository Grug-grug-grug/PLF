/// @desc ???
/// Level 1

if water_speed == "slow"
{
	water_alarm = int64(random_range(20,30));
}
else if water_speed == "fast"
{
	water_alarm = int64(random_range(2,5));
}
else if water_speed == "medium"
{
	water_alarm = int64(random_range(10,15));
}
else if water_speed == "fastest"
{
	water_alarm = int64(random_range(1,2));
}
alarm[0] = 1;
