function check_moving_platforms() {
	// Check all platforms
	with (moving_platforms) {
		if (angle_previous != image_angle) {
			if (place_meeting(x, y-4, other.id)) {// make 4 variable
				/*var _rotation = -(image_angle - angle_previous);
				var _dx = other.x - x;
				var _dy = other.y - y;
				var _sin = sin(_rotation);
				var _cos = cos(_rotation);
			
				other.x += (_dx*_cos - _dy*_sin) - _dx;
				other.y += (_dx*_sin + _dy*_cos) - _dy;*/
				
				var distance = point_distance(x, y, other.x, other.y);
				var angle =  point_direction(x, y, other.x, other.y);
				other.x = x + lengthdir_x(distance, angle + 0.5);
				other.y = y + lengthdir_y(distance, angle + 0.5);
				
				//angle_previous = image_angle;
			}
		} else {
			// Moving up or down
			if (y < yprevious) var _y = y;
			else var _y = yprevious;
			
			// Check if standing ontop
			if (place_meeting(x, _y-1, other.id)) {
				other.x += x-xprevious;
				other.y += y-yprevious;
			}
		}
	}
	
	// Push out wall if needed
	if (check_collision(x, y)) {
		fix_collision(x, y, 32, 32);
		
		// Check if we are stuck
		if (check_collision(x, y)) {
			// Place code for when you are squiched here
			// You could for example kill the player when he gets flattend
		}
	}
}