/// @desc ???

if obj_global.player_health == 0
	{
	obj_scr_output.raw_text += "\nmry_crpt\ntotal"
	obj_global.death_metadata[obj_global.total_deaths][0] = obj_player.x;
	obj_global.death_metadata[obj_global.total_deaths][1] = obj_player.y;
	obj_global.death_metadata[obj_global.total_deaths][2] = "blank";
	obj_global.total_deaths += 1;
	obj_global.current_hacks = 0;
	obj_global.player_health = 3;
	alarm[0] = 50;
	pixel_fx = layer_get_fx("die_effect")
	cell_size = 1;
	}
else
	{
		obj_player.hit = false;
		obj_global.player_health -= 1
		obj_scr_output.raw_text += "\crpt" + string(obj_global.player_health)
		
		instance_destroy();
	}









