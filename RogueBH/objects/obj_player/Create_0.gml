/// @desc ???
pixel_fx = layer_get_fx("shake")
/// @desc ???
spd = 5;
hmove = 0;
vmove = 0;
dire = 0;
dir_spd = 0;
straf_spd = 0;
dir_spd_x = 0;
dir_spd_y = 0;
instance_create_layer(x,y,"Bullets",obj_current_ammo);
hit = false;
fire_rate = true;

randomize();
sprite_mouth = int64(random_range(1,3));
sprite_left_eye = random_range(0,3)
sprite_right_eye = random_range(0,3);

alarm[1] = 1;
sprite_increment = 0;





