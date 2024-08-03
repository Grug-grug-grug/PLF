// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function transition_script(t_script){
	switch(t_script)
	{
		case "tutorial":
			raw_text = "go";
			text_speed = 10;
			next_room = rm_tutorial;
		break;
		
		case "level1":
			raw_text = "go level 1";
			text_speed = 10;
			next_room = rm_first_1;
		break;
		
		case "scoring":
			
			raw_text = "scoring is\nkilled " + string(obj_global.destroyed_enemy) + " - " + string(obj_global.destroyed_enemy * 1000)
			+ "\ndied " + string(obj_global.total_deaths) + " - " + string(obj_global.total_deaths * -20000) 
			+ "\ntime " + string(obj_global.level_timer) + " - " + string(100000 - obj_global.level_timer * 1000) + "\n"
			+ "\n\ntotal score " + string(obj_global.destroyed_enemy * 1000 - obj_global.total_deaths * -20000 + (100000 - obj_global.level_timer * 1000)) + 
			"\n\n grade A";
			text_speed = 10;
			if obj_global.previous_level == "tutorial"
			{
				next_room = rm_transition_room;
				obj_global.level = "level1";
			}
			obj_global.death_metadata = [];
		break;
	}
	return [raw_text, text_speed, next_room];
}