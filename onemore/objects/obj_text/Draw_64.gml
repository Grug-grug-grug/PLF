/// @desc draw textbox
draw_sprite_stretched(spr_text,0,x1,y1,RESOLUTION_W,200);

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _print = string_copy(my_text,1,text_progress);
draw_text((x1+x2)/2, y1 + 20, _print);
draw_set_color(c_white);
draw_text((x1+x2)/2, y2 + 22, _print);



