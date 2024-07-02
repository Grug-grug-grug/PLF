function collide_y(_last_pos) {
	y = _last_pos;
	if (speed_y < 0) {
		speed_y = 0;
		return;
	}
	
	if (falling > 0) {	
		falling = 0;
		slide_down_slope();
	}
	speed_y *= 0.8;
}