/// @desc ???

if place_meeting(x,y, obj_player) and global.chat_active == 0
{

global.game_pause = true;
create_textbox(text_id)
global.chat_active = 0;
}






