if obj_global_timing_tracker.pause == false
{
var _dir_spd_y = -keyboard_check(ord("W")) + keyboard_check(ord("S"));
var _dir_spd_x = -keyboard_check(ord("A")) + keyboard_check(ord("D"));



var _hmove = spd*_dir_spd_x;
var _vmove = spd*_dir_spd_y;
	
move_and_collide(_hmove,_vmove,obj_wall);
if _dir_spd_y < 0 //
{
sprite_index= Blue_spacesuit_walk_up;
image_speed=1;
last_dir = 1;
}

if _dir_spd_y > 0 //down 3+4
{
sprite_index= Blue_spacesuit_walk_down;
image_speed=1;
last_dir = 2;
}

if _dir_spd_x < 0 //left facing and walking subimages 5+6
{
sprite_index= Blue_spacesuit_walk_left;
image_speed=1;
last_dir = 3;
}

if _dir_spd_x > 0 //right 7+8
{
sprite_index= Blue_spacesuit_walk_right;
image_speed=1;
last_dir = 4;
}

if _dir_spd_y == 0 and _dir_spd_x == 0
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
}

if obj_global_timing_tracker.pause == true 
{
last_dir = 2
sprite_index= Blue_spacesuit_idle_front;
image_speed=1;
}

