/// @desc ???
draw_set_color(make_colour_rgb(128, 209, 177));

if draw_char < text_length
{
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length);
}


draw_sprite_ext(backgroundunder, 0, obj_player.x-8, obj_player.y-40, 2, .5,0,c_white,1);

var _drawtext = string_copy(text, 1, draw_char);
global.test = draw_char;
draw_text(obj_player.x-8, obj_player.y-40, text)

