/// @desc ???

///draw_set_font(
draw_set_color(c_white);
draw_set_font(global.newFont);
draw_text(x,y, "Time left: " + string(global.time_left));
draw_text(x,y+10, "Time left: " + string(global.first_key));
draw_text(x,y+20, "Time left: " + string(global.safe_key));
draw_text(x,y+30, "Boss " + string(global.boss_01));
draw_text(x,y+40, "Boss " + string(global.boss_01_outcome));
draw_text(x,y+50, "Boss " + string(global.boss_01_outcome_wakeup));

