/// @desc ???
// when entering a room create an instance of the player
instance_create_layer(obj_global_timing_tracker.new_x, obj_global_timing_tracker.new_y, "Instances",obj_player)

if obj_global_timing_tracker.random_number == 4
{
	instance_create_layer(0,0,"Instances",obj_creepy_text)
}
if obj_global_timing_tracker.random_number == 3
{
	instance_create_layer(0,0,"Instances",obj_creepy_player)
}
instance_destroy();
