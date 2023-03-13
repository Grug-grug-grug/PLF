/// @desc ???
/// @desc ???

if place_meeting(x,y, obj_player) and keyboard_check_pressed(vk_space) and global.chat_active == 0
{
global.key_bedroom = true;
global.game_pause = true;
create_textbox(text_id)
instance_destroy(obj_keyGen);


}




if global.key_bedroom
	{
		instance_destroy(obj_keyGen);
	}
