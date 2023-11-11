/// @desc ???

///draw_set_font(
draw_set_color(c_white);
draw_set_font(global.newFont);
draw_text(x,y, "Time left: " + string(global.time_left));
draw_text(x,y+30, "tloop number " + string(global.loopnumber));