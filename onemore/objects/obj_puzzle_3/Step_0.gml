/// @desc ???
/// @desc ???

if place_meeting(x,y, obj_player) and keyboard_check_pressed(vk_space) and global.chat_active == 0
{
global.chat_active = 0;
global.game_pause = true;
create_textbox(text_id)
global.first_key = 1;
instance_destroy(obj_key1);
}




if global.first_key == 1
	{
		instance_destroy(obj_key1);
	}
