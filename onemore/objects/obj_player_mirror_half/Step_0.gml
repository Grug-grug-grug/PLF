/// Basic player logic
if global.game_pause = true
{
	image_speed = 0;
}
if global.game_pause = false
{
global.chat_active = 0;
global.text_centre = false;

var right_key = keyboard_check(vk_left);
var left_key = keyboard_check(vk_right);
var up_key = keyboard_check(vk_up);
var down_key = keyboard_check(vk_down);

var xspd = (right_key - left_key) * move_spd;
var yspd = (down_key - up_key) * move_spd;


image_blend = c_black;
if room == rm_first_room
{
spinny =  true;
}
if room != rm_first_room
{
	spinny = false;
	image_angle = 0;
	
}
if spinny == true
{
	image_angle -= 1;
}
// animation

if up_key //
{
sprite_index= Blue_spacesuit_walk_up;
image_speed=1;
last_dir = 1;
}

if down_key //down 3+4
{
sprite_index= Blue_spacesuit_walk_down;
image_speed=1;
last_dir = 2;
}

if left_key //left facing and walking subimages 5+6
{
sprite_index= Blue_spacesuit_walk_left;
image_speed=1;
last_dir = 3;
}

if right_key //right 7+8
{
sprite_index= Blue_spacesuit_walk_right;
image_speed=1;
last_dir = 4;
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

if xspd == 0 and yspd == 0
{	
	if last_dir = 1 
	{
		sprite_index= Blue_spacesuit_idle_back;
		image_speed=1;
	}

	if last_dir = 2
	{
		sprite_index= Blue_spacesuit_idle_front;
		image_speed=1;
	}

	if last_dir == 3 
	{
		sprite_index= Blue_spacesuit_idle_left;
		image_speed=1;
	}

	if last_dir == 4
	{
		sprite_index= Blue_spacesuit_idle_right;
		image_speed=1;
	}
}
	
polygon = polygon_from_instance(id);

}	