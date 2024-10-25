/// @desc ???
if obj_global_script_tracker.got_drink == 0
{
	draw_sprite(Bar_bottle_orange,0,x,y);
}
if obj_global_script_tracker.got_drink == 1
{
	scribble("[fa_centre][wobble][scale,0.5]got a spare drink just in case\nPress P to drink").draw(x, y, typist);
}