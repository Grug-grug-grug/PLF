/// @description Core Player Logic


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
	if global.double_jump == true and place_meeting(x,y+1,obj_wall)
	{
		doublejumpsp = 1;
	}
	
	if global.thrustjump and place_meeting(x,y+1,obj_wall)
	{
		thrustjump = 1;
	}
	 
	// Calculate movement
	var _move = key_right - key_left;

	if vsp == 10
	{
		vsp = 10;
	}
	else if vsp > 4
	{
		vsp = 4;
	}
	else
	{
		vsp = vsp + grv;
	}
	phsp = hsp;
	
	if _move == 0 {
		hsp = hsp * .9;
	} else {
		hsp = phsp + _move *.3 ;
	}

	if keyboard_check_released(vk_space) and vsp < 0
	{
		vsp = vsp / 2;
	}
	
	if (!place_meeting(x,y+1,obj_wall)) && (doublejumpsp == 1) && keyboard_check_pressed(vk_space)    
	{
		vsp = -jumpsp;
		doublejumpsp -= 1;
	} 
	
	
	
	if (place_meeting(x,y+1,obj_wall)) && (key_jump) && key_jump != 0
	{
		vsp = -jumpsp;
		//audio_play_sound(bass,1,false,1,.06);
	} 
	
	if vsp != grv
	{
		hsp = phsp + _move * 0.1;
	}
	
	
	if abs(hsp) > walksp / 2
	{
		hsp = _move * walksp / 2;
	}
	
	if thrustjump == 1 && key_thrust && (!place_meeting(x,y+1,obj_wall))     
	{
		if keyboard_check(vk_up) == false
		{
			hsp = _move * 50;
			thrustjump = 0;
		}
	} 
	/*
	if abs(hsp) == walksp / 2
	{
		runEnable = runEnable + 1;
	} else {
		runEnable = 0;
	}
	
	if runEnable > 60
	{
		hsp = _move * walksp;
		
	}
	if runEnable > 150
	{
		hsp = _move * walksp*1.5;
		
	}
*/
	
	// Horizontal collision
	// put in collison logic for speed
	if (place_meeting(x + hsp, y, obj_wall)) {
		while (!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	if global.double_speed == true and keyboard_check(vk_control)
	{
		x = x + (hsp*1.5) ;
	}
	else
	{
		x = x + hsp;
	}
	
	hmom = hsp;
		
	
	
	// Vertical collision
	if (place_meeting(x, y + vsp, obj_wall))
	{
		while (!place_meeting(x,y+sign(vsp),obj_wall))
		{
			
				y = y + sign(vsp);
			
		}

		vsp = 0;
	}
	
	if global.groundpound and keyboard_check(vk_down) and key_jump and (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		vsp = 50;
	}
	
	if thrustjump == 1 && key_thrust && (!place_meeting(x,y+1,obj_wall)) and keyboard_check(vk_up) == true   
	{
		
		vsp = -4;
		
		thrustjump = 0;
	} 
	y = y + vsp;

	 
}