/// @desc ???
if obj_global_timing_tracker.current_loop == 1 
{
dialog_text = "[fa_centre][scale,0.5]No time for a drink right now"
}
else
{
	dialog_text = "[fa_centre][wobble][scale,0.5]got a spare drink just in case\nPress P to drink"
	obj_global_script_tracker.got_drink = 1
	alarm[0] = 300;
}