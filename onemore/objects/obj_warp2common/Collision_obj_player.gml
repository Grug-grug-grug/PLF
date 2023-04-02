/// Warp logic
if global.safe_key == 1
{

			room_goto(rm_common);
			obj_player.x = 550;
			obj_player.y = 240;
		
}
if global.safe_key == 0
{
	if       keyboard_check_pressed(vk_space) and global.chat_active == 0
		{
		global.chat_active = 0;
		global.game_pause = true;
		create_textbox("door_closed");
		}

}
