// Camera Setup
cam = view_camera[0];
cam_default_w = camera_get_view_width(cam);
cam_default_h = camera_get_view_height(cam);
follow = obj_player;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = obj_player.x;
yTo = obj_player.y;

// Zooming
zoomLevel = 1;
temp_cam_w = cam_default_w;
temp_cam_h = cam_default_h;

// Shaking
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;