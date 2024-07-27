function move_in_steps(_steps) {
	falling++;
	
	var _last_pos = noone;
	repeat (_steps) {
		// Move horizontaly and check x collision
		_last_pos = x;
		x += speed_x / _steps;
		if (check_collision(x, y)) {
			collide_x(_last_pos);
		}
		
		// Move verticaly and check y collision
		_last_pos = y;
		y += speed_y / _steps;
		if (check_collision(x, y)) {
			collide_y(_last_pos);
		}
	}
}