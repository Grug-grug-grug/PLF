/// @desc ???
if global.chat_active == 0
{
	if place_meeting(x,y, obj_player)
	{
	global.game_pause = true;
	create_textbox(text_id)
	}
}






