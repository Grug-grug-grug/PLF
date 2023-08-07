/// @description Starting logic
event_inherited();

hp = 3;
hsp = 0;
phsp = 0;
vsp = 0;
grv = 0.3;
walksp = 2; //3
jumpsp = 1; //5
doublejumpsp = 7;
thrustjump = 0;
onGround=true;
xSubPixel = 0;
ySubPixel = 0;


StateFree = function()
{
	var _atLedge = false;
	
	if (place_meeting(x + hsp, y, obj_wall)) 
	{
		if global.ledgegrab == true
		{
			var _horiWall = instance_place(x + hsp, y, obj_wall);
			if !position_meeting((sign(hsp) == 1) ? _horiWall.bbox_left : _horiWall.bbox_right, _horiWall.bbox_top - 1, obj_wall)
			{
				_atLedge = true;
				var _ledgeAboveorBelow = sign(obj_player.bbox_top - _horiWall.bbox_top);
			}
		}
	}
	
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
		else if vsp > 2
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
}
	
	
	


StateLedge = function()
{
	// Work out if we should jump
	if (key_jump)
	{
		if global.jump_on_2 && global.success_jumps > 1
		{
			vsp = -jumpsp*2;
		}
		else
		{
			vsp = -jumpsp * 1.5;
		}
		var _move = key_right - key_left;
		hsp = _move * walksp * 1.25;
		doublejumpsp = 1;
		state = StateFree;
	}
	if keyboard_check_pressed(vk_down) {
		vsp = grv; 
		state = StateFree;
	}
		
}

