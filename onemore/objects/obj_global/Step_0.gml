/// @desc ???

if global.time_left > 0 && global.game_pause == false
	{
		global.newloop = 0;
		global.time_left = global.time_left - delta_time/1000000;
	}

	

if global.time_left < 0
	{

		var bonus_room = int64(random_range(0,10));
		if bonus_room < 5
		{
			obj_player.x = 96;
			obj_player.y = 576;
			room_goto(rm_sleep);
			global.time_left = int64(random_range(5, 10));
			global.loopnumber += 1;
			global.current_loop += 1;
			global.newloop = 1;
			audio_stop_all();
		}
		if bonus_room > 4
		{
			obj_player.x = 96;
			obj_player.y = 576;
			room_goto(rm_bonus_1);
			global.time_left = int64(random_range(5, 10));
			global.loopnumber += 1;
			global.current_loop += 1;
			global.newloop = 1;
			audio_stop_all();
		}
		
		
	}


	
