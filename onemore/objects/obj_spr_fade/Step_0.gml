/// @desc ???
time_left = int64(global.time_left);

first_digit = time_left mod 10;


if time_left / 10 mod 2 == 0
{
	image_alpha = first_digit/10;
}
if time_left / 10 mod 2 != 0
{
	image_alpha = 1-first_digit/10;
}



