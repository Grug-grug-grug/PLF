/// @description Core Player Logic
polygon = polygon_from_instance(id);


if (global.Paused == true){
	// do nothing
} else {
	
	// Get Player inputs
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	
	
	if global.time_left > 12 and global.time_left < 30
	{
		key_jump = keyboard_check_pressed(vk_space);
		key_thrust = keyboard_check_pressed(vk_shift);
	}
	else
	{
		key_jump = 0;
		key_thrust = 0;
	}

	// if you have double jump power up and you are on the ground
	// recharge double jump powerup
	
	state();
	
	// Background scrolling
	layer_x("BG3", x * -0.1); 
	layer_x("BG4", x * -.05); 
	layer_y("BG3", y * -0.03);
	layer_y("BG4", y * -.008); 
	
	// Foreground
	layer_x("Foreground_top", x * -0.4); 
	layer_x("BG2", x * -.4); 
	 
	
	
	 
}