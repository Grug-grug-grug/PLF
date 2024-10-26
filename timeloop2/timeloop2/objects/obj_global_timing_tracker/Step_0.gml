/// @desc ???

if room != rm_menu
{
	time_tracker += delta_time/1000000


}
if int64(loop_length) == int64(time_tracker)
{
	random_number = irandom_range(0,10)
}

if loop_length - time_tracker < 1
{
	if endofloopchat == 0
	{
		endofloopchat = 1
		instance_create_layer(0,0,"Instances",obj_end_loop_soun)
		// dont need to chat if you are drinking
		if drinking == false
			{
			with (obj_textbox_generator) {instance_destroy();}
			var _dialog = instance_create_layer(obj_player.x-10, obj_player.y + 50,"Instances",obj_textbox_generator,
			{
				dialog_line : "endloop"
			});
			ds_map_add(obj_global_current_loop.my_map, "endloop", 1);
		}
	}
	
	pixelate_fx = layer_get_fx("Pixelate");
	pixelate_fx_params = fx_get_parameters(pixelate_fx)
	pixelate_fx_level += .1
	pixelate_fx_params.g_CellSize = pixelate_fx_level;

	// Apply updated parameters struct to the FX struct
	fx_set_parameters(pixelate_fx, pixelate_fx_params);
}

if time_tracker > loop_length
{
	// reset some parameters, such as keys, back to 0
	obj_global_script_tracker.left_door_key = 0
	obj_global_script_tracker.bedroom_key_1 = 0;
	obj_global_script_tracker.got_drink = 0;
	loop_length = 60;
	drinking = false;
	if obj_global_script_tracker.creepy_event == 1
	{
		obj_global_script_tracker.creepy_event_next_loop_dialog = 1
	}
	else
	{
		obj_global_script_tracker.creepy_event_next_loop_dialog = 0
	}
	time_tracker = 0;
	new_x = 90
	new_y = 570
	room_goto(rm_bedroom);
	current_loop += 1;
	ds_map_clear(obj_global_current_loop.my_map)
	/// @desc ???
	pixelate_fx_level = 15;	
	
} 


if time_tracker < 5
{
	endofloopchat = 0
	
	
	pixelate_fx = layer_get_fx("Pixelate");
	pixelate_fx_params = fx_get_parameters(pixelate_fx)
	if pixelate_fx_level > 1
	{
		pixelate_fx_level -= .25;
	}
	pixelate_fx_params.g_CellSize = pixelate_fx_level;
	
	// Apply updated parameters struct to the FX struct
	fx_set_parameters(pixelate_fx, pixelate_fx_params);
}
if time_tracker > 5 and loop_length - time_tracker > 5
{
	pixelate_fx = layer_get_fx("Pixelate");
	pixelate_fx_params = fx_get_parameters(pixelate_fx)
	pixelate_fx_params.g_CellSize = 1;
	
	// Apply updated parameters struct to the FX struct
	fx_set_parameters(pixelate_fx, pixelate_fx_params);
}