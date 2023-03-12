/// @desc ???


if int64(global.time_left / 5) mod 2 == 0
{


light[| eLight.Intensity] = (global.time_left mod 5)/10 *4;
}
else
{


light[| eLight.Intensity] = (1-(global.time_left mod 5)/4) *1.6;
}

