/// @desc ???


dir_spd_y = -keyboard_check(ord("W")) + keyboard_check(ord("S"));
dir_spd_x = -keyboard_check(ord("A")) + keyboard_check(ord("D"));

dire = point_direction( obj_player.x, obj_player.y, mouse_x,mouse_y);


// to stop vibration, need to work out when len between mouse and character < 1 and stop 
// movement

hmove = spd*dir_spd_x;
vmove = spd*dir_spd_y;
if hit == false
{
move_and_collide(hmove,vmove,obj_wall);
if mouse_check_button_pressed(mb_left) and obj_global.bullets_left > 0
{
	with(instance_create_layer(x,y,"Bullets",obj_mybullet))
	{
	dire = other.dire;
	hmove = lengthdir_x(other.spd, dire);
	vmove = lengthdir_y(other.spd, dire);
	}
	obj_global.bullets_left -= 1;
}
}
else
{
	mask_index = spr_blank;
}








