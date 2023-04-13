/// @desc ???
//global.text_centre = false;



if global.time_left > 0 && global.game_pause == false
	{
		global.newloop = 0;
		global.time_left = global.time_left - delta_time/1000000;
	}


if global.first_key == 1 and global.safe_key == 1
{
	global.boss_01 = true;	
}

if global.time_left < 0
	{
		
		
		
		
			{
			var bonus_room = int64(random_range(0,10));
			
			if bonus_room < 11
				{

					room_goto(rm_sleep);
					obj_player.x = 96;
					obj_player.y = 576;
					global.time_left = int64(random_range(60, 75));
					global.loopnumber += 1;
					global.current_loop += 1;
					global.newloop = 1;
					audio_stop_all();
				}
			if global.boss_01_outcome == 0 and global.boss_01 == true
				{
					room_goto(rm_boss_01);
					obj_player.x = 608;
					obj_player.y = 352;
					global.time_left = int64(random_range(1, 1.2));
					global.loopnumber += 1;      
					global.newloop = 1;
					audio_stop_all();
				}
			if bonus_room > 14
				{
					obj_player.x = 500;
					obj_player.y = 400;
					room_goto(rm_boss_01);
					global.time_left = int64(random_range(5, 10));
					global.newloop = 1;
					audio_stop_all();
				}
	
			}      
		
		
		
	}

