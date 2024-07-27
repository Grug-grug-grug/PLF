/// @desc ???

obj_global.death_metadata[obj_global.total_deaths][0] = obj_player.x;
obj_global.death_metadata[obj_global.total_deaths][1] = obj_player.y;
obj_global.death_metadata[obj_global.total_deaths][2] = "blank";
obj_global.total_deaths += 1;
if obj_global.destroyed_enemy >6 {obj_global.destroyed_enemy -= 1}
obj_global.bullets_left = obj_global.destroyed_enemy;
obj_global.current_shield_health = obj_global.total_shield_health;
obj_global.total_number_of_hacks = 0;
alarm[0] = 50;
pixel_fx = layer_get_fx("die_effect")
cell_size = 1;









