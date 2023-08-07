/// @description Core Player Logic
polygon = polygon_from_instance(id);

layer_x("BG3", obj_player.x * -.5); 
layer_x("BG4", obj_player.x * -.15); 



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
	
	
	
		
	layer_x("kb_city", x * -0.2); 
	layer_x("Foreground_top", x * -0.4); 
	layer_x("BG2", x * -.4); 
	
	if global.double_jump == true and onGround
	{
		doublejumpsp = 1;
	}	
	if global.jumpheight
	{
		jumpsp = 5;
	}
	else if global.jump 
	{
		jumpsp = 3;
	}
	else {jumpsp = 0};
	
	// Calculate movement
	var _move = key_right - key_left;

	if vsp > 4
	{
		vsp = 4;
	}
	else
	{
		vsp = vsp + grv;
	}
	phsp = hsp;
	
	if _move == 0 {
		hsp = hsp * .8;
	} else {
		hsp = phsp + _move *.1 ;
	}
	
	if abs(hsp) > walksp
	{
		hsp = _move * walksp;
	}
	
	if keyboard_check_released(vk_space) and vsp < 0
	{
		vsp = vsp / 2;
	}
	
	
	
	if (!place_meeting(x,y+1,obj_wall)) && (doublejumpsp == 1) && keyboard_check_pressed(vk_space)    
	{
		if global.jump_on_2 && global.success_jumps > 1
		{
			vsp = -jumpsp*1.35;
		}
		else
		{
			vsp = -jumpsp;
		}
		doublejumpsp -= 1;
		if onGround == true {global.success_jumps += 1};
	} 
	
	/*
	if vsp != grv
	{
		hsp = phsp + _move * 0.1;
	}
	*/
	
	
	

	// checking for solid ground
	onGround = false;
	if place_meeting(x,y+1,obj_wall)
	{
		onGround = true;
	}
	
	// check if you are standing on jumpthrough platform
	with(obj_jumpthoughplatform)
	{
		if place_meeting(x,y-1,other) && !place_meeting(x,y,other)
		{
			other.onGround = true;
		}
	}
	
	
	// script for one way platform
	scr_jumpthroughcollisions(obj_jumpthoughplatform);
		
	
	if onGround && key_jump > 0
	{
		global.success_jumps +=  1;
		if global.jump_on_2 && global.success_jumps > 1
		{
			vsp = -jumpsp*1.5;
		}
		else
		{
			vsp = -jumpsp;
		}
		
	}
	else if onGround && vsp == grv
	{
		vsp = 0;
	}
	

	StateFree();
		
	//if place_meeting(x,y+4,obj_wall) && vsp > 0
	//{
//		while !place_meeting(x,y+1,obj_slope) y+=1;
	//}
		
	var _hcol = move_and_collide(hsp,0,obj_wall,ceil(abs(hsp)));
	
	var _vcol = move_and_collide(0,vsp,obj_wall,ceil(abs(vsp)),hsp,vsp,hsp,vsp)
	if array_length(_vcol) > 0
	{
		y = floor(y)
		vsp = 0;
		
	}
	y = floor(y)
	global.test = y;
	

}