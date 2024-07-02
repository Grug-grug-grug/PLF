/// @desc ???


key_right = keyboard_check(vk_right)
key_left = -keyboard_check(vk_left)
key_jump = keyboard_check_pressed(vk_space)
key_jump_held = keyboard_check(vk_space)
//React Player Input

var _move = key_right + key_left;
hsp = _move * msp;

if place_meeting(x,y+1,obj_nodig_move)
{
	y -= 0.2;
}
if place_meeting(x,y+1,obj_nodig_move) and place_meeting(x,y-1,obj_wall)
{
	obj_global.food = 0;
}
if place_meeting(x,y,obj_water)
{
	grav = 0.01;
	jsp = .5;
}
else
{
	grav = 0.2;
	jsp = obj_global.jump_high;
}

if place_meeting(x,y,obj_water)
{
	on_ground = true;
}
else if !place_empty(x,y+1,obj_wall)
{
	on_ground = true;
}
else
{
	on_ground = false;
}

if keyboard_check(vk_down) and keyboard_check(vk_control) and on_ground == true
{
	sprite_index = spr_dog_dig;
}


if _move > 0 
{
	image_xscale = 1;
	if on_ground == false
	{
	sprite_index = spr_dog_jump;
	} 
	else 
	{
	
	sprite_index = spr_dog_walk;
	}
	image_speed = 4;
}
else if _move < 0
{
	
	image_xscale = -1;
	if on_ground == false
	{
	sprite_index = spr_dog_jump;
	} 
	else 
	{
	
	sprite_index = spr_dog_walk;
	}
	image_speed = 4;
}	
else if _move == 0 and !keyboard_check(vk_control)
{
	sprite_index = spr_dog;
}
if (vsp<5) vsp += grav;
if on_ground and key_jump{
vsp = key_jump * -jsp
}
if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-jsp/4)






//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall)){
while(!place_meeting(x,y+sign(vsp),obj_wall)){
y+=sign(vsp)
}
vsp=0;
}
y += floor(vsp);
//y = floor(y);
var _hspeed = move_and_collide(hsp,0,obj_wall,ceil(abs(hsp)))