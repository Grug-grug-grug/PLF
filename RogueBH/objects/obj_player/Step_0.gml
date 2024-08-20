/// @desc ???


dir_spd_y = -keyboard_check(ord("W")) + keyboard_check(ord("S"));
dir_spd_x = -keyboard_check(ord("A")) + keyboard_check(ord("D"));

dire = point_direction( obj_player.x, obj_player.y, mouse_x,mouse_y);

//draw_sprite(spr_player_alt,0,x,y)
// sprite legs move in direction of movement
if dir_spd_x > 0 and dir_spd_y > 0
{
	prev_angle = 315
}
else if dir_spd_x > 0 and dir_spd_y == 0
{
	prev_angle = 0
}
else if dir_spd_x > 0 and dir_spd_y < 0
{
	prev_angle = 45
}
else if dir_spd_x == 0 and dir_spd_y < 0
{
	prev_angle = 90
}
else if dir_spd_x < 0 and dir_spd_y < 0
{
	prev_angle = 135
}
else if dir_spd_x < 0 and dir_spd_y == 0
{
	prev_angle = 180
}
else if dir_spd_x < 0 and dir_spd_y > 0
{
	prev_angle = 215
}
else if dir_spd_x == 0 and dir_spd_y > 0
{
	prev_angle = 270
}

current_angle = lerp(current_angle,prev_angle,0.2)
// to stop vibration, need to work out when len between mouse and character < 1 and stop 
// movement



if hit == false
{
	hmove = spd*dir_spd_x;
	vmove = spd*dir_spd_y;
	if vmove == 0 and hmove == 0
	{}
	else
	{
	 instance_create_layer(x +hmove, y+vmove,"Instances",obj_player_move)
	}
	
	if mouse_check_button_pressed(mb_left) and fire_rate == true
	{
		sprite_mouth = random_range(0,6);
		sprite_left_eye = random_range(0,6)
		sprite_right_eye = random_range(0,6);
		obj_scr_output.raw_text += "\nmry_crpt\ninitiate"
		with(instance_create_layer(x,y,"Bullets",obj_mybullet))
		{
			dire = other.dire;
			hmove = lengthdir_x(other.spd, dire);
			vmove = lengthdir_y(other.spd, dire);
		}
		fire_rate = false
		alarm[0] = 25;
		instance_destroy(obj_current_ammo);
		instance_create_layer(x,y,"Bullets",obj_current_ammo);
		hmove -= lengthdir_x(5, dire);
		vmove -= lengthdir_y(5, dire);
	}

	move_and_collide(hmove,vmove,obj_wall);
}
else
{
	mask_index = spr_blank;
}








