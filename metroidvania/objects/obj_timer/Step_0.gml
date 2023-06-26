/// @desc ???
//global.text_centre = false;



if global.time_left > 0 
	{
		global.time_left -= 1;
	}



if global.time_left == 0 || global.time_left < 0
	{		
		global.time_left = bpm;
	}

