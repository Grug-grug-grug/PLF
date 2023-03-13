/// @desc ???

if global.time_left > 0 && global.game_pause == false
	{
		global.newloop = 0;
		global.time_left = global.time_left - delta_time/1000000;
	}

	

if global.time_left < 0
	{

		obj_player.x = 96;
		obj_player.y = 576;
		room_goto(rm_sleep);
		global.time_left = random_range(30, 45);
		global.loopnumber += 1;
		global.current_loop += 1;
		global.newloop = 1;
		
		
	}
	
