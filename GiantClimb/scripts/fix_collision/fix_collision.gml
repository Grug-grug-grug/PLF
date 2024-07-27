function fix_collision(_startx, _starty, _max_dist, _steps){
	var _dir = 0;
	var _dist = 1;
	
	repeat (_max_dist) {
		repeat (_steps) {
			var _x = x+lengthdir_x(_dist, _dir);
			var _y = y+lengthdir_y(_dist, _dir);
			
			if (!check_collision(_x, _y)) {
				x = _x;
				y = _y;
				return;
			}
			
			_dir += 360/_steps;
		}
		_dist += 1;
	}
	x = _startx;
	y = _starty;
}