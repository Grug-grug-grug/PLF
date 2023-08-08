/// @param text
function scr_text(_text)
{

	text= _text;

}


// @param text_id
function create_textbox(_text_id){
	with(instance_create_depth(0,0,-9999, obj_speech) )
	{
		scr_game_text(_text_id);
	}
}

