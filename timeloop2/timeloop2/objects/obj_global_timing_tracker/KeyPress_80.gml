/// @desc ???
if obj_global_script_tracker.got_drink == 1
{
	drinking = true
	pause = true
	time_tracker = loop_length - 3
	pixelate_fx = layer_get_fx("Pixelate");
	pixelate_fx_params = fx_get_parameters(pixelate_fx)
	pixelate_fx_level += 10
	pixelate_fx_params.g_CellSize = pixelate_fx_level;
	alarm[0] = 180;
}
