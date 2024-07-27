// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_shadow(_text){
draw_text_ext_transformed_color(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
	camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,
	_text,
	noone,noone,1.04,1.04,0,c_black,c_black,c_black,c_black,1);
draw_text_ext_transformed_color(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
	camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,
	_text,
	noone,noone,1.02,1.02,0,c_black,c_black,c_black,c_black,1);
draw_text(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
	camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,
	_text);
}