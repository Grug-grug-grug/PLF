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
	key_jump = keyboard_check_pressed(vk_space);
	
	var _gSJ = global.success_jumps;
	

	audio_sound_gain(obj_timer.DW_B2, _gSJ/10, 5);
	audio_sound_gain(obj_timer.DW_K1, _gSJ/10, 5);
	audio_sound_gain(obj_timer.DW_HH, _gSJ/10, 5);
	
	if global.time_left > 12 and global.time_left < 30 && global.jump
	{
		jumpsp = og_jumpsp * 2;
		if _gSJ > 0 && jumpsp < og_jumpsp * 3
		{
			jumpsp = (1+_gSJ/10) * jumpsp;
		}
	}
	else
	{
		jumpsp = og_jumpsp
		if keyboard_check_pressed(vk_space) && onGround == true && doublejumpsp > 0
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
	
	if place_meeting(x,y,obj_ladder) and onLadder
	{
		
		//x = obj_ladder.x + 4;
		var _hmove = key_right - key_left;
		if !place_meeting(x+1,y,obj_wall) || !place_meeting(x-1,y,obj_wall)  x += _hmove * .5;
		var _vmove =  - keyboard_check(vk_up) + keyboard_check(vk_down)
		y += _vmove * .75;
		if place_meeting(x,y+1,obj_wall) && _vmove > 0 onLadder = false;
		
	}
	//else if (place_meeting(x-1,y,obj_wall)  || place_meeting(x+1,y,obj_wall)) && owall
	//{
		
		//var _move = key_right - key_left;
		//prev_parkour_momentum = parkour_momentum;
		//parkour_momentum = _move * .75 * prev_parkour_momentum;
		//y -= parkour_momentum;
		//if parkour_momentum < 0.1
		//{
	//		x = x + 1;
	//	}
		
	//}
	else
	{
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
			if abs(hsp) < 0.1 hsp = 0;
			else hsp *= .8;
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
	
	
		if place_meeting(x,y,obj_ladder) and keyboard_check_pressed(vk_up)
		{
			onLadder = true;
		}
		else if place_meeting(x,y+2,obj_ladder) and keyboard_check_pressed(vk_down) && !place_meeting(x,y+1,obj_wall)
		{
			y += 2;
			onLadder = true;
		}
		else
		{
			onLadder  =false;
		}
		
		if (!place_meeting(x,y+1,obj_wall)) && (doublejumpsp == 1) && keyboard_check_pressed(vk_space)    
		{
			if global.jump_on_2 && _gSJ > 1
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
	
		if place_meeting(x,y-1,obj_wall) 
		{
			y += 1;
			vsp = 0;
		}

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
			
			if  global.time_left > 12 and global.time_left < 30
			{
				global.success_jumps +=  1;
				vsp = -jumpsp;
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
	

		state = StateFree();
		
		//if place_meeting(x,y+4,obj_wall) && vsp > 0
		//{
	//		while !place_meeting(x,y+1,obj_slope) y+=1;
		//}
		if !place_meeting(x,y+1,obj_wall) && place_meeting(x,y+2,obj_slope) && vsp > 0
		{
			while !place_meeting(x,y+1,obj_slope) y += 1;
		}
		
		var _hcol = move_and_collide(hsp,0,obj_wall,ceil(abs(hsp)));
	
		var _vcol = move_and_collide(0,vsp,obj_wall,ceil(abs(vsp)),hsp,vsp,hsp,vsp)
		if array_length(_vcol) > 0
		{
			
			vsp = 0;
		
		}
		y = floor(y)
		
	
	
	}
}