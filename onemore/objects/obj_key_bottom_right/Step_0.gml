/// @desc ???
/// @desc ???

if place_meeting(x,y, obj_player) and keyboard_check_pressed(vk_space)
{
create_textbox(text_id)
global.key_bedroom_bottom_right = 1;
instance_destroy(obj_key_bottom_right);
}




if global.key_bedroom_bottom_right == 1
	{
		instance_destroy(obj_key_bottom_right);
	}
