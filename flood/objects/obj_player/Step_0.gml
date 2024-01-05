/// @desc ???

hmove = (- keyboard_check(vk_left) + keyboard_check(vk_right)) * spd;
vmove = (- keyboard_check(vk_up) + keyboard_check(vk_down)) * spd;


move_and_collide(hmove,vmove,obj_wall);

if hmove > 0
{
	if vmove == 0
	{
		image_angle = 90;
	}
	else if vmove > 0
	{
		image_angle = 45;
	}
	else if vmove < 0
	{
		image_angle = 135;
	}
}
else if hmove < 0
{
	if vmove == 0
	{
		image_angle = 270;
	}
	else if vmove > 0
	{
		image_angle = 235;
	}
	else if vmove < 0
	{
		image_angle = 315;
	}
}
else if hmove == 0
{
	if vmove > 0
	{
		image_angle = 180;
	}
	else if vmove < 0
	{
		image_angle = 0;
	}
}



