/// @desc ???


if place_meeting(x,y-8,obj_player) or
place_meeting(x+8,y,obj_player) or
place_meeting(x-8,y,obj_player) or
place_meeting(x,y+8,obj_player)
{
if keyboard_check(vk_control)
	{

		x = x + obj_player.hmove;
		y = y + obj_player.vmove;
	}
}

if place_meeting(x,y-8,obj_water) or
place_meeting(x+8,y,obj_water) or
place_meeting(x-8,y,obj_water) or
place_meeting(x,y+8,obj_water)
{
	var _newObj = instance_create_layer(x,y,"player",obj_wall);
	_newObj.image_xscale = sprite_width/8;
	_newObj.image_yscale = sprite_height/8;
	
	instance_destroy();
}

