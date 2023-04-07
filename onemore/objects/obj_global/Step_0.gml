/// @desc ???
//global.text_centre = false;

if global.time_left > 0 && global.game_pause == false
	{
		global.newloop = 0;
		global.time_left = global.time_left - delta_time/1000000;
	}
/*
if global.time_left > 0.1 && global.time_left < 0.11
	{
		create_textbox("creepy_3");
	}
*/
if global.time_left < 0
	{
		
		global.current_loop += 1;
		if global.current_loop > 0 
		{
		var bonus_room = int64(random_range(0,10));
		if bonus_room < 11
		{

			room_goto(rm_sleep);
			obj_player.x = 96;
			obj_player.y = 576;
			global.time_left = int64(random_range(60, 70));
			global.loopnumber += 1;
			global.newloop = 1;
			audio_stop_all();
		}
		if bonus_room > 14
		{
			obj_player.x = 500;
			obj_player.y = 400;
			room_goto(rm_bonus_1);
			global.time_left = int64(random_range(5, 10));
			global.newloop = 1;
			audio_stop_all();
		}
		}
		
		
	}


	
