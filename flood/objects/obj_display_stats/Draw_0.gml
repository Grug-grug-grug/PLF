/// @desc ???

/// @desc ???
draw_set_font(fn_help);
draw_text(100,20,"Total time:");
draw_text(100,50,obj_stats.actual_time);
draw_text(100,100,"Time for run:");
draw_text(100,130,obj_stats.this_run_time);
draw_text(100,180,"People saved:");
draw_text(100,210,16-obj_stats.lost);
draw_text(100,260,"People not saved:");
draw_text(100,290,obj_stats.lost);
draw_text(100,340,"Deaths:");
draw_text(100,370,obj_stats.die);





