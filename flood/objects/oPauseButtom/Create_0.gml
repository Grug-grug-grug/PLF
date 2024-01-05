/// @description Starting variables

paused = false;
paused_surf = -1;

// sprite of the buttom.
sprite = sprite_index;

// starting position relative to the camera
posx = x - camera_get_view_x(view_camera[0]);
posy = y - camera_get_view_y(view_camera[0]);
