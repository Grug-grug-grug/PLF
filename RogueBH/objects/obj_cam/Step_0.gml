// Update zoom size
if keyboard_check_pressed(ord("I")) {
  zoomLevel = 0.5;
} else if keyboard_check_pressed(ord("O")) {
  zoomLevel = 1;
} else if keyboard_check_pressed(ord("P")) {
  zoomLevel = 2;
}

// Update view size
zoomXTo = cam_default_w * zoomLevel;
zoomYTo = cam_default_h * zoomLevel;
temp_cam_w += (zoomXTo - camera_get_view_width(cam)) / 25;
temp_cam_h += (zoomYTo - camera_get_view_height(cam)) / 25;
var temp_cam_w_half = temp_cam_w/2;
var temp_cam_h_half = temp_cam_h/2;
camera_set_view_size(cam, temp_cam_w, temp_cam_h);

// Update destination
if (instance_exists(follow)) {
    xTo = follow.x;
    yTo = follow.y;
}

// Update object position
x += (xTo - x) / 10;
y += (yTo - y) / 10;

// Keep within room
//x = clamp(x, temp_cam_w_half+buff, room_width-temp_cam_w_half-buff);
//y = clamp(y, temp_cam_h_half+buff, room_height-temp_cam_h_half-buff);

// Camera shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));

// Update camera view
camera_set_view_pos(cam, x-temp_cam_w_half, y-temp_cam_h_half);

// Camera moving
camera_set_view_angle(cam,camera_angle)
spin_counter += 0.01
camera_angle = spin_speed * sin(spin_counter);

camera_set_view_size(cam, temp_cam_w + zoom_speed_x*cos(spin_counter), temp_cam_h+zoom_speed_y*sin(spin_counter));