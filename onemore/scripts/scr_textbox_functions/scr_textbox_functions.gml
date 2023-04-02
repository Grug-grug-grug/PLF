/// @param text
function scr_text(_text, _txt_speed = 1, _txtbackground = spr_textbox, _border = 6)
{
	border = _border;
	text[page_number] = _text;
	text_speed = _txt_speed;
	txtb_spr = _txtbackground;
	page_number ++;

}

/// @param option
/// @param link_id
function scr_option(_option, _link_id){
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	option_number++;
}

// @param text_id
function create_textbox(_text_id){
	with(instance_create_depth(0,0,-9999, obj_textbox) )
	{
		scr_game_text(_text_id);
	}
}

