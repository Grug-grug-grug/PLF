/// @desc ???

hmove = (- keyboard_check(vk_left) + keyboard_check(vk_right)) * spd;
vmove = (- keyboard_check(vk_up) + keyboard_check(vk_down)) * spd;


move_and_collide(hmove,vmove,obj_wall);

if hmove > 0
{
	if vmove == 0
	{
		image_angle = 90;
		mask_index = spr_player;
	}
	else if vmove > 0
	{
		image_angle = 45;
		mask_index = spr_player;
	}
	else if vmove < 0
	{
		image_angle = 135;
		mask_index = spr_player;
	}
}
else if hmove < 0
{
	if vmove == 0
	{
		image_angle = 270;
		mask_index = spr_player;
	}
	else if vmove > 0
	{
		image_angle = 235;
		mask_index = spr_player;
	}
	else if vmove < 0
	{
		image_angle = 315;
		mask_index = spr_player;
	}
}
else if hmove == 0
{
	if vmove > 0
	{
		image_angle = 180;
		mask_index = spr_player;
	}
	else if vmove < 0
	{
		image_angle = 0;
		mask_index = spr_player;
	}
}

if crowbar and keyboard_check(vk_alt) and crowbar_swing == false
{
	image_xscale *= 1.3;
	image_yscale *= 1.3;
	crowbar_swing = true;
	alarm[0] = 10;
}

