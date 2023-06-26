if (shake) 
{ 
	shake_time -= 1; 
	var camera = view_get_camera(0);
	var _xval = choose(-shake_magnitude, shake_magnitude); 
	var _yval = choose(-shake_magnitude, shake_magnitude); 
	camera_set_view_pos(view_camera[0], camera_get_view_x(camera)+ _xval, camera_get_view_y(camera) + _yval); 

	if (shake_time <= 0) 
	{ 
	    shake_magnitude -= shake_fade; 

	    if (shake_magnitude <= 0) 
	    { 
	        camera_set_view_pos(view_camera[0], camera_get_view_x(camera), camera_get_view_y(camera)); 
	        shake = false; 
	    } 
	} 
}	