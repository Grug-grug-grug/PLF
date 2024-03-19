/// @desc ???

dir_spd = keyboard_check(ord("W")) - keyboard_check(ord("S"));
//straf_spd = keyboard_check(ord("A"))-keyboard_check(ord("D"));

dire = point_direction( obj_player.x, obj_player.y, mouse_x,mouse_y)
hmove = lengthdir_x(spd*dir_spd, dire);
vmove = lengthdir_y(spd*dir_spd, dire);

move_and_collide(hmove,vmove,obj_wall);


draw_sprite_ext(sprite_index,0, image_index, x, y, 1, 1, point_direction(x, y, mouse_x, mouse_y), -1);

if crowbar and keyboard_check(vk_alt) and crowbar_swing == false
{
	image_xscale *= 1.3;
	image_yscale *= 1.3;
	crowbar_swing = true;
	alarm[0] = 10;
}

