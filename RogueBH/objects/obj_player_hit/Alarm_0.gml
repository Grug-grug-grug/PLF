/// @desc ???

fx_set_parameter(pixel_fx,"g_CellSize",1)
obj_global.death_metadata[obj_global.total_deaths][0] = obj_player.x;
obj_global.death_metadata[obj_global.total_deaths][1] = obj_player.y;
obj_global.death_metadata[obj_global.total_deaths][2] = "blank";
obj_global.total_deaths += 1;
obj_global.current_hacks = 0;
obj_player.hit = true;
obj_global.player_health = 8;
room_restart();







