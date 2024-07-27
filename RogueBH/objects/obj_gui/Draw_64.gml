/// @desc ???
draw_text(10,10,string("Timer: " + string(obj_global.level_timer)));
draw_text(10,30,string("Level: " + string(obj_global.sublevel)));
draw_text(10,50,string("Bullets: " + string(obj_global.bullets_left) + "/" + string(obj_global.destroyed_enemy)));
draw_text(10,70,string("Shield: " + string(obj_global.current_shield_health) + "/" + string(obj_global.total_shield_health)));
draw_text(10,900,string("Hacks: " + string(obj_global.current_hacks) + "/" + string(obj_global.total_number_of_hacks)));









