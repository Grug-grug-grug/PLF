// Camera Setup
randomize();
cam = view_camera[0];
cam_default_w = camera_get_view_width(cam);
cam_default_h = camera_get_view_height(cam);
follow = obj_player;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = obj_player.x;
yTo = obj_player.y;

// Zooming
zoomLevel = 2;
temp_cam_w = cam_default_w;
temp_cam_h = cam_default_h;

// Shaking
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

// Auto-zooming and spinning
camera_angle = 0;
spin_counter = 0;
spin_speed = random_range(0.1,2);
zoom_speed_x = random_range(2,10);
zoom_speed_y = random_range(1,5);