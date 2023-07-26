/// @description Starting logic
event_inherited();

hp = 3;
hsp = 0;
phsp = 0;
vsp = 0;
grv = 1.3;
walksp = 8; //3
jumpsp = 10; //5
doublejumpsp = 7;
thrustjump = 0;
onGround=true;
xSubPixel = 0;
ySubPixel = 0;

StateFree = function()
{
	if global.double_jump == true and onGround
	{
		doublejumpsp = 1;
	}
	
	if global.jumpheight
	{
		jumpsp = 10;
	}
	else if global.jump 
	{
		jumpsp = 5;
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
		hsp = hsp * .9;
	} else {
		hsp = phsp + _move *.9 ;
	}

	if keyboard_check_released(vk_space) and vsp < 0
	{
		vsp = vsp / 2;
	}
	
	
	
	if (!place_meeting(x,y+1,obj_wall)) && (doublejumpsp == 1) && keyboard_check_pressed(vk_space)    
	{
		if global.jump_on_2 && global.success_jumps > 1
		{
			vsp = -jumpsp*2;
		}
		else
		{
			vsp = -jumpsp;
		}
		doublejumpsp -= 1;
		if onGround == true {global.success_jumps += 1};
	} 
	
	
	
	
	
	if vsp != grv
	{
		hsp = phsp + _move * 0.1;
	}
	
	
	if abs(hsp) > walksp / 2
	{
		hsp = _move * walksp / 2;
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
	
	var _atLedge = false;
	
	// Horizontal collision
	if (place_meeting(x + hsp, y, obj_wall)) 
	{
		
		// Check for ledge powerup and ledge
		if global.ledgegrab == true
		{
			var _horiWall = instance_place(x + hsp, y, obj_wall);
			if !position_meeting((sign(hsp) == 1) ? _horiWall.bbox_left : _horiWall.bbox_right, _horiWall.bbox_top - 1, obj_wall)
			{
				_atLedge = true;
				var _ledgeAboveorBelow = sign(obj_player.bbox_top - _horiWall.bbox_top);
			}
		}
		
		while (abs(hsp) >0.1)
		{
			hsp *= 0.5;
			if (!place_meeting(x+hsp,y,obj_wall)) x += hsp;
		}
		hsp = 0;
	}
	/*
	xSubPixel += hsp;
	hsp  = xSubPixel div 1;
	xSubPixel -= hsp;
	*/
	x += hsp;

	
	
	
	// Vertical collision
	if (place_meeting(x, y + vsp, obj_wall))
	{
		if (vsp > 0) onGround = true;
		while (abs(vsp) > 0.1)
		{
			vsp *= 0.5;
			if (!place_meeting(x,y+ vsp,obj_wall)) y += vsp;

		}
		vsp = 0;
	}
	
	
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
	
	y = y + vsp;
	
	
	
	if (_atLedge) && (_ledgeAboveorBelow != sign(obj_player.bbox_top- _horiWall.bbox_top))
	{
		y = _horiWall.bbox_top + sprite_get_yoffset(spr_Wall_Grabani);
		state = StateLedge;
		sprite_index = spr_Wall_Grabani;
	}
	else if !place_meeting(x,y+1,obj_wall) && !place_meeting(x,y+1,obj_jumpthoughplatform)
	{
		if vsp < 0
			{
				sprite_index = Anim_Jump_up;
			}
		else if vsp > 0
		{
			sprite_index = Anim_Jump_down;
		}
		
	}
	else if place_meeting(x,y+1,obj_wall) || place_meeting(x,y+1,obj_jumpthoughplatform)
	{
		image_speed = 1.5;
		if keyboard_check_pressed(vk_space) && key_jump == 0 
		{
			sprite_index = Anim_Shoulder;
		}
		if sprite_index == Anim_Shoulder and image_index < image_number - 1 && _atLedge == false
		{
		
			image_speed = 1.5;
	
		}
		else
			{
			image_speed = 1.5;
			
			if vsp > 0
			{
				sprite_index = Anim_Jump_up;
				image_index = 3;
			}
			else if hsp == 0
			{
				sprite_index = Anim_Idle;	
			
				image_speed = 5;
			}
			else if abs(hsp) > 0.2
			{
				sprite_index = spr_player_run;	
			}
			else 
			{
				sprite_index = Anim_Idle;	
			
				image_speed = 5;
			}
			}
	}
	
	
	if hsp != 0	image_xscale = sign(hsp);
	
	// grab ledge if move past one
	
	/*
	ySubPixel += vsp;
	vsp  = ySubPixel div 1;
	ySubPixel -= vsp;*/
	
}

StateLedge = function()
{
	// Work out if we should jump
	if (key_jump)
	{
		vsp = -jumpsp;
		doublejumpsp = 1;
		state = StateFree;
	}
	if keyboard_check_pressed(vk_down) {vsp = grv; state = StateFree};
}


state = StateFree;