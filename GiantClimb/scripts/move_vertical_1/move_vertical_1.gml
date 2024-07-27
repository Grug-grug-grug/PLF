function move_vertical() {
	// Check if jump is pressed
	if (keyboard_check(key_jump)) or (keyboard_check(key_jump_sec)) or (gamepad_button_check(gamepad_device, gamepad_jump)) {
		// If not jumping yet, start jump
		if (falling < assist_frames) and (jumping = 0) {
			jumping = 1; falling = 3;
		}
		
		// If already jumping, continue jump
		if (jumping > 0) and (jumping < jump_duration) {
			jumping++;
			speed_y = -jump_force;
		}
	} else jumping = 0;
	
	// Add gravity force
	speed_y += force_gravity;
}