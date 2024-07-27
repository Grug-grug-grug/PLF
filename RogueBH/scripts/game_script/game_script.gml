// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function transition_script(t_script){
	switch(t_script)
	{
		case "tutorial":
			raw_text = "...booting....          \ninitiating vulnerability research training module       \n\n\n./import/test_module_1.tar\n.....imported successfully         \nopening run.exe      \n......\n\nready";
			text_speed = 10;
			next_room = rm_tutorial;
		break;
		
		case "level1":
			raw_text = "test 2   \nready";
			text_speed = 10;
		break;
	}
	return [raw_text, text_speed, next_room];
}