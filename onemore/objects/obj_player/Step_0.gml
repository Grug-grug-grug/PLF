/// Basic player logic
if global.game_pause = false
{
	
var right_key = keyboard_check(vk_right);
var left_key = keyboard_check(vk_left);
var up_key = keyboard_check(vk_up);
var down_key = keyboard_check(vk_down);

var xspd = (right_key - left_key) * move_spd;
var yspd = (down_key - up_key) * move_spd;
global.chat_active = 0;
// animation
if up_key //As long as I hold W it repeats subimages 1 + 2, my animation walking up
{ 
//image_speed=.2
image_index=1;

}

if down_key //down 3+4
{
image_index=0;
}

if left_key //left facing and walking subimages 5+6
{
image_index=2;
}

if right_key //right 7+8
{
image_index=3;
}

// collison
if place_meeting(x + xspd, y, obj_wall) == true
	{
		xspd = 0;
	}

if place_meeting(x, y + yspd, obj_wall) == true
	{
		yspd = 0;
	}

if place_meeting(x + xspd, y, obj_wall_light) == true
	{
		xspd = 0;
	}

if place_meeting(x, y + yspd, obj_wall_light) == true
	{
		yspd = 0;
	}

x += xspd;
y += yspd;

polygon = polygon_from_instance(id);

}	