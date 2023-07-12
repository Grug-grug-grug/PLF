/// @desc ???

// get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

// store number of options in current menu
op_length = array_length(option[menu_level]);

// move through menu
pos_move = 0;
pos += down_key - up_key;
pos_move = down_key - up_key;
if pos_move != 0 {audio_play_sound(Change,1,0)};

if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};

/// Using the options
if accept_key
{
	audio_play_sound(Decide,1,0);
	switch(menu_level)
	{
		// first level
		case 0:
			switch(pos)
			{
				case 0:
				// start game
					room_goto_next();
					break;
	
				case 1:
				// settings
					menu_level = 1;
					pos = 0;
					break;
		
				case 2:
				// Quit
					game_end();
					break;
	
			}
			break;
		
		// Menu
		case 1:
		switch(pos)
			{
				case 0:
				// Window size
					;
					break;
	
				case 1:
				// Controls
					break;
		
				case 2:
				// Back
					menu_level = 0;
					pos = 0;
					break;
	
			}
			break;
	}
}

