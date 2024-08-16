/// @desc ???
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(fn5)
if obj_global.completed_repetitions_required == obj_global.number_of_repetitions_required + 1
{
	instance_create_layer(x,y,"Bullets",obj_level_complete);
}
else
{


	counter -= .25
	cell_size += .1;
	fx_set_parameter(pixel_fx,"g_CellSize",cell_size);
	if counter == 0
	{
		fx_set_parameter(pixel_fx,"g_CellSize",1)
		instance_destroy()
		//obj_global.level_timer = 0;
		obj_scr_output.raw_text += "\ntmp_vuln\nfnd"
		room_restart()
	}
}







