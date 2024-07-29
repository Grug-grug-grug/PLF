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
draw_text_shadow(
		"Identified " + string(obj_global.completed_repetitions_required) + " of " + string(obj_global.number_of_repetitions_required));

/*
	if obj_global.level_timer < 15 and obj_global.level != 1
	{
		draw_text_ext_transformed((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))/2,
		(camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]))/2+20," +1 shield",noone,noone,2,2,0);
	
	}*/
	counter -= .25

	if counter == 0
	{
		instance_destroy()
		//obj_global.level_timer = 0;
		obj_scr_output.raw_text += "\ntmp_vuln\nfnd"
		room_restart()
	}
}







