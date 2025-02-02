/// @desc Draw textbox

accept_key = keyboard_check_pressed(vk_space);

global.chat_active = 1;


//global.game_pause = true;
if text_top == true
{
	textbox_x = camera_get_view_x(view_camera[0])-50;
	textbox_y = camera_get_view_y(view_camera[0])-10;
}
if text_top == false
{
	textbox_x = camera_get_view_x(view_camera[0])-20;
	textbox_y = camera_get_view_y(view_camera[0]) + 130;
}

// setup

if (setup == false)
	{
		
		setup = true;
		draw_set_font(text_box_font);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		
		// Loop through the pages
		page_number = array_length(text);
		for (var p = 0; p < page_number; p++)
		{
			
			// Find how many characters are on each page and store that number in the text_legth array
			text_length[p] = string_length(text[p]);
			
			// Get the x position for the textbox
			// No character - centering textbox on screen 
			text_x_offset[p] = 44;
		}		
			
	
	}

if draw_char < text_length[page]
{
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);
}



// Flip through pages
if accept_key == true
{
		
	// If typing is done go to next page
	if draw_char == text_length[page]
	{
		// Next page
		if page < page_number - 1
		{
			page++;
			draw_char = 0;
		}
		// Destroy the textbox
		else
		{
			// link text for options
			if option_number > 0
			{
				
				create_textbox(option_link_id[option_pos]);
			}
					
			instance_destroy();
			global.chat_active = 0;
			global.chat_active_options = 0;

		}
		
	}
	// If not done typing
	else
	{
		draw_char = text_length[page];
	}
}



// Draw text box

var _txtb_y = textbox_y

// Draw the text
txtb_img += txtb_img_spd;
if textbox_width == 280
{
	var _txtb_x = textbox_x + text_x_offset[page];
	txtb_spr_w = sprite_get_width(txtb_spr);
}
if textbox_width != 280
{
	var _txtb_x = textbox_x + text_x_offset[page];
	txtb_spr_w = textbox_width;
}
txtb_spr_h = sprite_get_height(txtb_spr);
// back of the textbox
draw_sprite_ext(txtb_spr, txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h,0, c_white, 1);



// options
if draw_char == text_length[page] && page = page_number - 1
{
	
	// Option pick
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos, 0 ,option_number -1);
	
	
	
	//draw the options
	var _op_space = 20;
	var _op_bord = 6;
	for (var op = 0; op < option_number; op++)
		{
		// option box
		var _o_w = string_width(option[op]) + _op_bord*2 + 10;
		draw_sprite_ext(txtb_spr, txtb_img,_txtb_x + 30, _txtb_y - _op_space * option_number + _op_space * op, _o_w/txtb_spr_w, (_op_space - 1)/txtb_spr_h,0 ,c_white, 1);
		
		// draw arrow
		if option_pos == op
		{
			draw_sprite(spr_pointer,0, _txtb_x,  _txtb_y - _op_space * option_number + _op_space*op + 2);
		}
		
		// draw the option text
		draw_text(_txtb_x + 32 + _op_bord,  _txtb_y - _op_space * option_number + _op_space * op + 2, option[op]);
		}
}

var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(_txtb_x + border, _txtb_y + border, _drawtext, line_sep, line_width)
