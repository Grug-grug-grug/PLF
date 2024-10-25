/// @desc ???
if obj_global_timing_tracker.time_tracker > time_to_shut
{
	sprite_index = spr_door;
	mask_index = spr_door;
}
if place_meeting(x,y+1,obj_player)
{
	if  obj_global_script_tracker.left_door_key == 1
	{ 
		instance_destroy()
	}
}