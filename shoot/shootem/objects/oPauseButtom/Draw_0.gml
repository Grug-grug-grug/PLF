/// @description Draw paused surface

if surface_exists(paused_surf) {
	// position relative to the camera
	var px = camera_get_view_x(view_camera[0]);
	var py = camera_get_view_y(view_camera[0]);
	
	// draw paused surface
	draw_surface(paused_surf, px, py);	
	
	// darken the paused surface
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
} else {
	if sprite_exists(sprite){
		draw_self();
	}
}