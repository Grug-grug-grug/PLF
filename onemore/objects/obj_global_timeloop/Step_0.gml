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
			if global.current_loop < 4
			{
				bonus_room = 3;
			}			
			global.bonus_room_var = bonus_room;
			if bonus_room < 7
				{
					global.new_x_position = 96;
					global.new_y_position = 576;
					TransitionStart(rm_sleep, sqFadeOut_white, sqFadeIn_white);
					
					global.time_left = int64(random_range(80, 120));
					global.loopnumber += 1;
					global.current_loop += 1;
					global.newloop = 1;
					
					global.bb_door = 0;
					global.bb_door_opened = false;
					global.bar_counter = 0;
					
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
			if bonus_room > 6
				{
					global.new_x_position = 500;
					global.new_y_position = 400;
					
					TransitionStart(rm_actual_first, sqFadeOut_white, sqFadeIn_white);
					global.time_left = int64(random_range(5, 10));
					global.newloop = 1;
					audio_stop_all();
				}
	
			}      
		
		
		
	}

