//Get Player Input
key_right = keyboard_check(vk_right)
key_left = -keyboard_check(vk_left)
key_jump = keyboard_check_pressed(vk_space)
key_jump_held = keyboard_check(vk_space)
//React Player Input

var _move = key_right + key_left;
hsp = _move * msp;


if _move == 0
{
	sprite_index = _Idle;
}
else if _move > 0
{
	sprite_index = _Run;
	image_xscale = 1;
}
else if _move < 0
{
	sprite_index =  _Run ;
	image_xscale = -1;
}	

if vsp < 0.5 and on_ground == false
{
	sprite_index = _Jump;
}
if vsp > 0 and on_ground == false
{	
	sprite_index = _JumpFallInbetween;
}

if (vsp<5) vsp += grav;

if place_meeting(x,y+1,obj_jumpthoughplatform) && keyboard_check(vk_down) && key_jump && !place_meeting(x,y+1,obj_wall)
{
	y = y + 1;
	sprite_index = _JumpFallInbetween;
}
else if on_ground and key_jump{
vsp = key_jump * -jsp
}
if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-jsp/4)



//Horizontal Collision
if !place_meeting(x-1,y,obj_wall)
{
	if place_meeting(x,y,obj_movingflr)
	{
		x -= 1;
	}
	if place_meeting(x,y,obj_movingflrfast)
	{
		x -= 1.5;
	}
}
var _hspeed = move_and_collide(hsp,0,obj_wall,ceil(abs(hsp)))

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

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall)){
while(!place_meeting(x,y+sign(vsp),obj_wall)){
y+=sign(vsp)
}
vsp=0;
}
y += floor(vsp);
y = floor(y);


if !place_empty(x,y+1,obj_wall)
{
	on_ground = 1;
}
else if place_meeting(x,y+4,obj_slope) or place_meeting(x, y+2, obj_foot) 
{
	on_ground = 1;
}
else if place_meeting(x, y+1, obj_jumpthoughplatform) and (vsp < 0.5 or vsp > 0)
{
	on_ground = 1;	
}
else
{
	on_ground = 0;
}
