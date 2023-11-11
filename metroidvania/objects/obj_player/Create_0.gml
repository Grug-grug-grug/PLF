/// @description Starting logic
event_inherited();

hp = 3;
hsp = 0;
phsp = 0;
vsp = 0;
grv = 0.3;
walksp = 2; //3
jumpsp = 1; //5
og_jumpsp = 1.5;
walljumpsp = 4;
doublejumpsp = 7;
thrustjump = 0;
onGround=true;
onLadder = false;
xSubPixel = 0;
ySubPixel = 0;


onParkour = false;
parkourTimer = 0;
pvsp = 0;

StateFree = function()
{
	if !place_meeting(x,y+1,obj_wall) && !place_meeting(x,y+1,obj_jumpthoughplatform)
	{
		if vsp < 0
			{
				sprite_index = Anim_Jump_up;
				
			}
		else if vsp > 1
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
	
	
	

