/// @desc ???


if !mouse_check_button(mb_right) and place_meeting(x,y,obj_player)
{
	draw_text((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))/2,
	(camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]))/2,
	"Press right mouse to hack")
}







