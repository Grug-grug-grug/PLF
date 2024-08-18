/// @desc ???

layer_hspeed("Background",timer);
layer_vspeed("Background",timer2);

layer_hspeed("Background_2",timer/1.3);
layer_vspeed("Background_2",timer2/1.3);

layer_background_blend(layer_background_get_id("Background_1"),merge_color(clr1,clr2,i/100))

i += 1;





