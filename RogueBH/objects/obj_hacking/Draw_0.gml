/// @desc ???
randomize();

if !mouse_check_button(mb_right) and place_meeting(x,y,obj_player)
{
	if final_vuln
	{
		draw_text_shadow("Identify root vuln")
		alarm[2] = 1
	}
	else
	{
		draw_text_shadow("Right click to identify vuln");
	}
}
if mouse_check_button(mb_right) and can_hack and hack_timer < hack_time_required
{
	//pixelate effect
	fx_set_parameter(pixel_fx,"g_CellSize",4);
	
	
	
	if hack_timer < 1
	{
		obj_scr_output.raw_text += "\nfnd_vuln\n..";
		
	}
	hack_timer += 1
	if hack_timer == 1
	{
		with instance_create_layer(x,y,"Bullets",obj_hack_defence){
			self.hack_defence = other.hack_defence
		}
	}

	draw_text_color(camera_get_view_x(view_camera[0])+80,
	camera_get_view_y(view_camera[0])+30,
	"fuzz_for_vuln",c_white,c_white,c_white,c_white,1);
	
	var _hacking_string = []
	_hacking_string[0] = ""
	_hacking_string[1] = ""
	_hacking_string[2] = ""
	_hacking_string[3] = ""
	_hacking_string[4] = ""
	_hacking_string[5] = ""
	_hacking_string[6] = ""
	for (var _i = 0; _i < hack_timer; _i += 1) 
	{
		var _ran_string = chr(irandom_range(ord("0"), ord("z")));
		if _i < 60
		{
			_hacking_string[0] += _ran_string;
		}
		else if  _i > 59 and _i < 120
		{
			_hacking_string[1] += _ran_string;
		}
		else if  _i > 119 and _i < 180
		{
			_hacking_string[2] += _ran_string;
		}
		else if  _i > 179 and _i < 240
		{
			_hacking_string[3] += _ran_string;
		}
		else if  _i > 239 and _i < 300
		{
			_hacking_string[4] += _ran_string;
		}
		else if  _i > 299 and _i < 360
		{
			_hacking_string[5] += _ran_string;
		}
		else if  _i > 359 and _i < 420
		{
			_hacking_string[6] += _ran_string;
		}
	}
	
	draw_set_halign(fa_left)
	draw_text_color(camera_get_view_x(view_camera[0])+50,
	camera_get_view_y(view_camera[0])+50,
	_hacking_string[0],c_lime,c_lime,c_lime,c_lime,.9)
	draw_text_color(camera_get_view_x(view_camera[0])+50,
	camera_get_view_y(view_camera[0])+70,
	_hacking_string[1],c_lime,c_lime,c_lime,c_lime,.6)
	draw_text_color(camera_get_view_x(view_camera[0])+50,
	camera_get_view_y(view_camera[0])+90,
	_hacking_string[2],c_lime,c_lime,c_lime,c_lime,.4)
	draw_text_color(camera_get_view_x(view_camera[0])+50,
	camera_get_view_y(view_camera[0])+110,
	_hacking_string[3],c_lime,c_lime,c_lime,c_lime,.25)
	draw_text_color(camera_get_view_x(view_camera[0])+50,
	camera_get_view_y(view_camera[0])+130,
	_hacking_string[4],c_lime,c_lime,c_lime,c_lime,.1)
	draw_text_color(camera_get_view_x(view_camera[0])+50,
	camera_get_view_y(view_camera[0])+150,
	_hacking_string[5],c_lime,c_lime,c_lime,c_lime,.07)
	draw_text_color(camera_get_view_x(view_camera[0])+50,
	camera_get_view_y(view_camera[0])+170,
	_hacking_string[6],c_lime,c_lime,c_lime,c_lime,.03)
	
}
else if hack_timer == hack_time_required
{
	
	if final_vuln
	{
		instance_create_layer(x,y,"Bullets",obj_level_complete)
		instance_destroy()
	}
	obj_global.current_hacks += 1;
	obj_scr_output.raw_text += "\nvuln_fnd"
	// if everything in room is hacked, then finish and restart the room
	if obj_global.current_hacks == obj_global.total_number_of_hacks
	{
		
		obj_global.completed_repetitions_required += 1;
		
		//if obj_global.level_timer < 15 {obj_global.total_shield_health += 1}
		obj_global.current_hacks = 0;
		obj_global.current_shield_health = obj_global.total_shield_health
		obj_global.player_health = obj_global.player_health_max
		instance_create_layer(x,y,"Bullets",obj_sublevel_complete)
		instance_destroy();
	}
	else
	{
		
		hack_timer = 0;
		instance_create_layer(x,y,"Bullets",obj_succesful_hack)
		instance_destroy();
	}
}
else
{
	hack_timer = 0;
	if obj_global.player_health != 0
	{
		fx_set_parameter(pixel_fx,"g_CellSize",1)
	}
}







