/// @description Starting logic
event_inherited();

hp = 3;
hsp = 0;
phsp = 0;
vsp = 0;
grv = 0.3;
walksp = 3; //3
jumpsp = 5; //5
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
	
	if global.thrustjump and place_meeting(x,y+1,obj_wall)
	{
		thrustjump = 1;
	}
	
	if keyboard_check_pressed(vk_left)
	{
		image_xscale = image_xscale * -1;
	}
	if keyboard_check_pressed(vk_right)
	{
		image_xscale = image_xscale *-1;
	}
	if keyboard_check_pressed(vk_down)
	{
		image_yscale = image_yscale / 2;
	}
	else if keyboard_check_released(vk_down)
	{
		image_yscale = image_yscale * 2;
	}
	
	 
	
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
	
	if global.groundpound and keyboard_check(vk_down) and key_jump and (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		vsp = 50;
	}
	global.test3 = key_jump;
	if onGround && key_jump > 0
	{
		vsp = -jumpsp;
	}
	else if onGround && vsp == grv
	{
		vsp = 0;
	}
	y = y + vsp;
	
	// grab ledge if move past one
	if (_atLedge) && (_ledgeAboveorBelow != sign(obj_player.bbox_top- _horiWall.bbox_top))
	{
		y = _horiWall.bbox_top + sprite_get_yoffset(spr_player_new);
		state = StateLedge;
	}
	
	
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
}


state = StateFree;