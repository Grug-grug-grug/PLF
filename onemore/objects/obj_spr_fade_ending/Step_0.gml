/// @desc ???
time_left = int64(global.time_left);
first_digit = time_left mod 10;
if time_left > 10
{
	image_alpha = 0;	
}

if time_left < 10
{
	if time_left mod 2 == 0
	{
		image_alpha = 1;
	}
	if time_left mod 2 != 0
	{
		image_alpha = 0;
	}
}




