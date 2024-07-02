/// @desc ???

draw_text(10,10,obj_global.which_path);
// Just turn the array into a string (lazy way):
draw_text(10, 20, string("Death count : " + string(obj_global.death_count)));
draw_text(10, 30, string(ds_list_size(obj_rewind.td)));
draw_text(10, 40, string(obj_rewind.td_rewind));

draw_text(10, 50, string(obj_rewind.rewind_step_counter));
draw_text(10, 60, string(obj_global.xspeed));










