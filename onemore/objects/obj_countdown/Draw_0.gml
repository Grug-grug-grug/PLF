/// @desc ???

///draw_set_font(
draw_set_color(c_white);
draw_set_font(global.newFont);
draw_text(x,y, "Time left: " + string(global.time_left));
draw_text(x,y+10, "door opened?: " + string(global.bb_door_opened));
draw_text(x,y+30, "test 1" + string(global.test1));
draw_text(x,y+40, "test2 " + string(global.test2));
draw_text(x,y+50, "b room" + string(global.bonus_room_var));