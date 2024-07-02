function movement_initiate() {
	// Set controller deadzone
	gamepad_set_axis_deadzone(0,0.2);
	
	// Collision
	collider = obj_collider;
	
	// Keybinds
	key_jump = vk_up;
	key_jump_sec = ord("W");
	
	key_left = vk_left;
	key_left_sec = ord("A");
	
	key_right = vk_right;
	key_right_sec = ord("D")
	
	gamepad_jump = gp_face1;
	gamepad_horizontal = gp_axislh;
	gamepad_device = 0;
	
	// Forces
	force_acceleration = 1.2;
	force_gravity = 0.8;
	force_friction = 0.85;
	
	// Jumping
	jump_force = 8;
	jump_duration = 9;
	
	// Slopes
	max_slope_height = 2;
	slope_resistance = 0.9;

	// Speed
	speed_x = 0;
	speed_y = 0;
	
	// Other
	assist_frames = 4;
	size = 1;
	
	// Internal variables
	falling = noone;
	jumping = noone;
	acceleration_cur = noone;
}