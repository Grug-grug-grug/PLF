/// @desc ???


dir_spd_y = -keyboard_check(ord("W")) + keyboard_check(ord("S"));
dir_spd_x = -keyboard_check(ord("A")) + keyboard_check(ord("D"));

dire = point_direction( obj_player.x, obj_player.y, mouse_x,mouse_y);


// to stop vibration, need to work out when len between mouse and character < 1 and stop 
// movement



if hit == false
{
hmove = spd*dir_spd_x;
vmove = spd*dir_spd_y;
if mouse_check_button_pressed(mb_left) and fire_rate == true
{
	obj_scr_output.raw_text += "\nmry_crpt\ninitiate"
	with(instance_create_layer(x,y,"Bullets",obj_mybullet))
	{
	dire = other.dire;
	hmove = lengthdir_x(other.spd, dire);
	vmove = lengthdir_y(other.spd, dire);
	}
	fire_rate = false
	alarm[0] = 50;
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








