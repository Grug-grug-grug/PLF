
if global.chat_active == 0
{
global.no_txt_sprite = true;
global.game_pause = true;
create_textbox("test1");
global.chat_active = 0;
instance_destroy(id);

}
