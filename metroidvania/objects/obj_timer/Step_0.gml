/// @desc ???
//global.text_centre = false;

if global.doublebeat == true and doublebpm_counter == 0 
{
	bpm = doublebpm;
	doublebpm_counter = 7 * bpm;
}

if doublebpm_counter == 0
{
	doublebpm_counter = 0;
}
else
{
	doublebpm_counter -= 1;
}

if doublebpm_counter == 0 and global.doublebeat == true
{
	bpm  = ((time/song_bpm) * 60);
	global.doublebeat = false;
}
 

global.test = round(doublebpm_counter/60);
//global.test2 = bpm;
  
if global.time_left > 0 
	{
		global.time_left -= 1;
	}


if global.time_left == 0 || global.time_left < 0
	{		
		global.time_left = bpm;
	}

