// Camera Setup
cam = view_camera[0];
cam_default_w = camera_get_view_width(cam);
cam_default_h = camera_get_view_height(cam);
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

// Zooming
zoomLevel = 1;
temp_cam_w = cam_default_w;
temp_cam_h = cam_default_h;

// Shaking
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;