/// @desc ???
if obj_global_script_tracker.headset != 1
{
	draw_sprite(headphones,0,x,y)
}
else
{
	draw_sprite(headphones,0,-100,-100)
}
scribble(dialog_text).draw(obj_player.x, obj_player.y+30, typist);
	