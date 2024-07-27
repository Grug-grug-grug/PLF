/// @desc ???
obj_global.destroyed_enemy += 1;
obj_global.bullets_left += 1;
game_set_speed(10,gamespeed_fps)
fx_set_parameter(pixel_fx,"g_Magnitude",3);
fx_set_parameter(pixel_fx,"g_Shake_Speed",1);
alarm[0] = 1;
alarm[1] = 5;








