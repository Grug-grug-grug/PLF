/// @desc ???
/// @desc ???

if place_meeting(x,y, obj_player) and keyboard_check_pressed(vk_space) and global.chat_active == 0
{
global.chat_active = 0;
global.game_pause = true;
create_textbox(text_id)
global.key_bedroom_top_left = 1;
instance_destroy(obj_key1);
global.chat_active = 0;
}




if global.key_bedroom_top_left == 1
	{
		instance_destroy(obj_key1);
	}
