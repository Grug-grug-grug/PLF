/// @desc ???

#region MOVE THE VIEW

halfViewWidth = camera_get_view_width(view_camera[0])/2;

halfViewHeight = camera_get_view_height(view_camera[0])/2;

//camera_set_view_pos(view_camera[0], x - halfViewWidth, y - halfViewHeight);

#endregion

#region CLAMP CAMERA

minview_x = 0;
minview_y = 0;
maxview_x = room_width - camera_get_view_width(view_camera[0]);
maxview_y = room_height - camera_get_view_height(view_camera[0]);

cx = x - halfViewWidth;
cy = y - halfViewHeight;

cx = clamp(cx,minview_x, maxview_x);
cy = clamp(cy,minview_y, maxview_y);

camera_set_view_pos(view_camera[0],cx,cy)
#endregion

