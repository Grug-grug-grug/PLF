{
	var CAMERA_PAN_SPEED = 10;
	var camera = view_get_camera(0);
	
	var desired_x = obj_player.x /320;
	desired_x -= frac(desired_x);
	desired_x *= 320;
		
	var desired_y = obj_player.y /180;
	desired_y -= frac(desired_y);
	desired_y *= 180;
	
	//camera_set_view_pos(camera, desired_x, desired_y);
	
	var current_x = camera_get_view_x(camera);
	var current_y = camera_get_view_y(camera);
	
	if ((desired_x != current_x) || (desired_y != current_y))
	{
		var dx = clamp(desired_x - current_x, -CAMERA_PAN_SPEED, +CAMERA_PAN_SPEED);
		var dy = clamp(desired_y - current_y, -CAMERA_PAN_SPEED, +CAMERA_PAN_SPEED);
		camera_set_view_pos(camera, current_x + dx, current_y + dy);
	}

	
}

