/// @desc ???
//global.text_centre = false;

//global.time_left = global.time_left - floor(delta_time / 1000000)


global.time_left = global.time_left - floor(delta_time / 10000);

var _gTL = global.time_left

if doublebpm_counter > 0 {doublebpm_counter -= 1};

// end the double beat
if doublebpm_counter == 0 && _gTL <= 0 && global.doublebeat_enable == false
{
	bpm  = 3600/ song_bpm;
	global.time_left = bpm;
}

// start the double beat
if global.doublebeat_enable == true and doublebpm_counter == 0 and _gTL <= 0
{
	bpm = doublebpm;
	doublebpm_counter = 8 * bpm;
	global.time_left = bpm;
	global.doublebeat_enable = false;
}

if global.jump_failed > 0
{
	global.jump_failed -= 1;
}


if  _gTL == 0 {global.time_left = bpm};

