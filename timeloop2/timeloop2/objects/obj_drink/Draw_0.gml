if obj_global_script_tracker.got_drink == 0
	{
		draw_sprite(Bar_bottle_orange,0,x,y);
	}
/// @desc ???
if obj_global_timing_tracker.current_loop == 1
{
	scribble(dialog_text).draw(x, y, typist);
	
}
else
{
	if obj_global_script_tracker.got_drink == 1
	{
		scribble(dialog_text).draw(x, y, typist);
	}
}