/// @desc ???
var _spd = runner_speed;

var _hmove = lengthdir_x(_spd, dire);
var _vmove = lengthdir_y(_spd, dire);
if !place_meeting(x +_hmove,y, obj_wall)
{
	x = x + _hmove;
	
}
if !place_meeting(x,y +_vmove, obj_wall)
{
	y = y + _vmove;
}
if hit_wall_die and (place_meeting(x +_hmove,y, obj_wall) or place_meeting(x,y +_vmove, obj_wall))
{
	instance_destroy();
	
}


	




