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
		if keyboard_check_pressed(vk_space) && key_jump == 0 && doublejumpsp == 0 || keyboard_check_pressed(vk_space) && key_jump == 0 && onGround == true
		{
			
			global.success_jumps = 0; 
			global.jump_failed = 15;
			global.jump_timer = 20;
		}
	}

	if (place_meeting(x,y+1,obj_jumpthoughplatform)) && keyboard_check_pressed(vk_space) && keyboard_check(vk_down)
	{
		y = y + 1
		
	} 	
	
	state();
	
	// Background scrolling
	
	layer_x("kb_city", x * -0.2); 
	
	layer_x("BG3", x * -0.1); 
	layer_x("BG4", x * -.05); 
	layer_y("BG3", y * -0.03);
	layer_y("BG4", y * -.008); 
	
	// Foreground
	layer_x("Foreground_top", x * -0.4); 
	layer_x("BG2", x * -.4); 
	 
	
	
	 
}