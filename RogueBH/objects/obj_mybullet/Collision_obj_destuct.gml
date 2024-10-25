/// @desc ???
game_set_speed(10,gamespeed_fps)
fx_set_parameter(pixel_fx,"g_Magnitude",4);
fx_set_parameter(pixel_fx,"g_Shake_Speed",4);
instance_create_layer(x,y,"Instances",obj_shake)
instance_destroy();