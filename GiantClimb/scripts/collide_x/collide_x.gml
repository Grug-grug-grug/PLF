function collide_x(_last_pos) {	
	// Check if we can move up
	repeat(max_slope_height)
	{
		y--;
		speed_x *= slope_resistance;
		if (!place_meeting(x, y, collider)) {
			slide_down_slope();
			return;
		}
	}
	
	// Reset position and speed
	y += max_slope_height;
	x = _last_pos;
	speed_x = 0; 
}