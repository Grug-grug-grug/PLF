function move_horizontal() {
	// Update horizontal speed
	var _key_x = (keyboard_check(key_right) or keyboard_check(key_right_sec)) - (keyboard_check(key_left) or keyboard_check(key_left_sec));
	
	if (_key_x != 0) {
		speed_x += force_acceleration * _key_x;
		image_xscale = abs(image_xscale) * sign(_key_x);
	}
	
	// Add fiction force
	speed_x *= force_friction;
}