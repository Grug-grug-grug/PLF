/// @description Insert description here

/*
this camera makes tre transition for the room( NOT GMS2 room ), 
*/

og_camera_x = camera_get_view_x(0);
og_camera_y = camera_get_view_y(0);

targetX = obj_dog.x;
targetY = obj_dog.y;
camera_speed = 0.1;


global.active_room = noone;

view_width = 320;
view_heigth = 180;

view_middle_width = view_width/2;
view_middle_height = view_heigth/2;

lock = false;

shake = false;
shake_time = 30;
shake_magnitude = 5;
shake_fade = 0.8;
/// @desc ???







