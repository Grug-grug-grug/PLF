/// @desc Text box stuff

text_box_font = global.newFont;
text_top = global.text_centre;
textbox_width = 280;
textbox_height = 40;
border = 6;
line_sep = 12;
line_width = textbox_width - border * 2;
txtb_spr = spr_textbox;

txtb_img = 0;
txtb_img_spd = 0;
depth = -9999;

// Text
page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;

// Options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;


