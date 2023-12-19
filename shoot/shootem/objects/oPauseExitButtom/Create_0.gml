/// @description Starting variables

// startng positio relativa to the camera
posx = x - camera_get_view_x(view_camera[0]);
posy = y - camera_get_view_y(view_camera[0]);

// this object start deactivated
instance_deactivate_object(id);