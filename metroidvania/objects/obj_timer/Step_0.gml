/// @desc ???
//global.text_centre = false;


if doublebpm_counter > 0 {doublebpm_counter -= 1};
if global.time_left > 0 {global.time_left -= 1};

// end the double beat
if doublebpm_counter == 0 && global.time_left == 0 && global.doublebeat_enable == false
{
	bpm  = 3600/ song_bpm;
	global.time_left = bpm;
}

// start the double beat
if global.doublebeat_enable == true and doublebpm_counter == 0 and global.time_left == 0
{
	bpm = doublebpm;
	doublebpm_counter = 8 * bpm;
	global.time_left = bpm;
	global.doublebeat_enable = false;
}




if  global.time_left == 0 {global.time_left = bpm};

global.test = doublebpm_counter;
//global.test2 = bpm;