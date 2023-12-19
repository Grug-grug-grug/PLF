/// @desc ???
var _cam_x = camera_get_view_x(view_camera[0]) ;
if room == rm_start
{
	layer_x("Background6", _cam_x * -0.25)
	layer_x("Background5", _cam_x * -0.15)
	layer_x("Background4", _cam_x * 0.15)
	layer_x("Background3", _cam_x * 0.5)
	layer_x("Background2", _cam_x * 0.65)
	layer_x("Background1", _cam_x * 0.95)
}

if room == rm_forest
{

	layer_x("Background11", _cam_x * -0.25)
	layer_x("Background10", _cam_x * -0.15)
	layer_x("Background9", _cam_x * -0.10)	
	layer_x("Background8", _cam_x * -0.05)
	layer_x("Background7", _cam_x * 0.1)
	layer_x("Background6", _cam_x * 0.45)
	layer_x("Background5", _cam_x * 0.55)
	layer_x("Background4", _cam_x * 0.65)
	layer_x("Background3", _cam_x * 0.75)
	layer_x("Background2", _cam_x * 0.85)
	layer_x("Background1", _cam_x * 0.95)
}




