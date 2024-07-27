function slide_down_slope() {
	y += max_slope_height;
	x += 1;
	if (!check_collision(x, y)) {
		falling = 9;
		speed_x++;
		return;
	}
	
	x -= 2;
	if (!check_collision(x, y)) {
		falling = 9;
		speed_x--;
		return;
	}
	
	y -= max_slope_height;
	x ++;
}