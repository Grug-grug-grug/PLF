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
			raw_text = "scoring is\nkilled " + string(obj_global.destroyed_enemy) + "\ndied " + string(obj_global.total_deaths) + "\ntime" + string(obj_global.level_timer) + "\n";
			text_speed = 10;
		break;
	}
	return [raw_text, text_speed, next_room];
}