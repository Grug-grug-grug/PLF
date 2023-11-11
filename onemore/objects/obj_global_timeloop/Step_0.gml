/// @desc ???
//global.text_centre = false;



if global.time_left > 0 
	{
		global.newloop = 0;
		global.time_left = global.time_left - delta_time/1000000;
	}



if global.time_left > -1 and global.time_left < 10
{
	
	horrifi_noise_set(true,1-(global.time_left)/10);
	global.final_10 = true;	
}
else
{
	global.final_10 = false;
}

if global.time_left < 0
	{		
			bonus_room = int64(random_range(0,10));
			
	horrifi_noise_set(false,0.17);
			if global.current_loop < 4
			{
				bonus_room = 3;
			}			
			global.bonus_room_var = bonus_room;
			if bonus_room < 7 and global.final_10 == true
				{
					global.new_x_position = 96;
					global.new_y_position = 576;
					room_goto(rm_sleep);
					obj_player.x = 96;
					obj_player.y = 576;
					//TransitionStart(rm_sleep, sqFadeOut_white, sqFadeIn_white);
					
					
					
					global.time_left = int64(random_range(20, 30));
					global.loopnumber += 1;
					global.current_loop += 1;
					global.newloop = 1;
					
					global.bb_door = 0;
					global.bb_door_opened = false;
					global.bar_counter = 0;
					
					audio_stop_all();
				}
				
	}

