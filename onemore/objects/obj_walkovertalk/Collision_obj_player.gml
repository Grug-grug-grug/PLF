
if global.chat_active == 0
{

global.text_centre = true;
global.game_pause = true;
create_textbox(text_id);
global.chat_active = 0;
instance_destroy(id);

}
  