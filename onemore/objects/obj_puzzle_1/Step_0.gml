/// @desc ???
/// @desc ???

if place_meeting(x,y, obj_player) and keyboard_check_pressed(vk_space)
{

create_textbox(text_id)
global.first_key = 1;
instance_destroy(obj_key1);
}




if obj_puzzle_1 == 1
	{
		instance_destroy(obj_key1);
	}
