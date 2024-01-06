/// @desc ???

if place_meeting(x,y-4,obj_player) or
place_meeting(x+4,y,obj_player) or
place_meeting(x-4,y,obj_player) or
place_meeting(x,y+4,obj_player)
{
	if obj_player.crowbar_swing
	{
		instance_destroy();
	}
}




