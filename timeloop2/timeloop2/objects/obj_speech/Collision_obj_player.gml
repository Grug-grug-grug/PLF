/// @desc ???
if keyboard_check_pressed(vk_space)
{
	var _dialog = instance_create_layer(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),"Instances",obj_dialog,
	{
		chat_start_point : "NextConvo"
	}
	);
	obj_global_timing_tracker.pause = true;
	instance_destroy()
}