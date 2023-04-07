// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_lightingPulse(_colour,_updown){

var _time_left = global.time_left

if int64(_time_left / 10) mod 2 == 0
{

	light[| eLight.Color] =  _colour;
	if _updown == "UP"
		{
			light[| eLight.Intensity] = _time_left mod 10/10 * 3 + 1.5 ;
		}
	if _updown == "DOWN"
		{
		light[| eLight.Intensity] = (1-(_time_left mod 10)/10) * 3 + 1.5  ;
		}
	}
if int64(_time_left / 10) mod 2 != 0
	{

	light[| eLight.Color] =  _colour;
	if _updown == "UP"
	{
	light[| eLight.Intensity] = (1-(_time_left mod 10)/10) * 3 + 1.5 ;
	}
	if _updown == "DOWN"
	{
	light[| eLight.Intensity] = _time_left mod 10/10 * 3 + 1.5 ;
	}
	}


if _time_left < 10
{
	if int64(_time_left mod 2) == 0
	{
		light[| eLight.Intensity] = 10 ;
	}
	if int64(_time_left mod 2) != 0
	{
		light[| eLight.Intensity] = 0;
	}
}
}
/// @desc ???


