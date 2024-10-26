/// @desc ???
// when entering a room create an instance of the player
instance_create_layer(obj_global_timing_tracker.new_x, obj_global_timing_tracker.new_y, "Instances",obj_player)
// no creepy events for the first 10 loops
if obj_global_timing_tracker.current_loop < 10
{
	obj_global_timing_tracker.random_number = 0
}
// if random numbers are right create strange event
if obj_global_timing_tracker.random_number == 10
{
	instance_create_layer(0,0,"Instances",obj_creepy_text)
	obj_global_script_tracker.creepy_event = 1
}
else if obj_global_timing_tracker.random_number == 9
{
	instance_create_layer(0,0,"Instances",obj_creepy_player)
	obj_global_script_tracker.creepy_event = 1
}
else if obj_global_timing_tracker < 9
{
	obj_global_script_tracker.creepy_event = 0
}
if obj_global_timing_tracker.time_tracker < 5
{
	instance_create_layer(0,0,"Instances",obj_end_loop_soun)
}

instance_destroy();
