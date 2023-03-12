/// Warp logic
if global.safe_key == 1
{
	if place_meeting(x,y,obj_player) == true
		{
			room_goto(target_rm);
			obj_player.x = target_x;
			obj_player.y = target_y;
		}
}
if global.safe_key == 0
{
	if place_meeting(x,y, obj_player) and keyboard_check_pressed(vk_space) and global.chat_active == 0
		{
		global.chat_active = 0;
		global.game_pause = true;
		create_textbox("door_closed");
		}

}
