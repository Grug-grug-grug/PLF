/*
{
	var x_max_room_width = 320;
	var y_max_room_height = 180;
	
	
	var CAMERA_PAN_SPEED = 10;
	var camera = view_get_camera(0);
	
	var desired_x = obj_player.x /x_max_room_width;
	desired_x -= frac(desired_x);
	desired_x = desired_x * x_max_room_width;
		
	var desired_y = obj_player.y /y_max_room_height;
	desired_y -= frac(desired_y);
	desired_y *= desired_y * y_max_room_height;
	
	//camera_set_view_pos(camera, desired_x, desired_y);
	
	var current_x = camera_get_view_x(camera);
	var current_y = camera_get_view_y(camera);
	
	/*
	var dx = noone;
	var dy = noone;
	var _camera_x = noone;
	var _camera_y = noone;
	
	if obj_player.x  > (desired_x + 160) && obj_player.x < (x_max_room_width - 160) 
	{
		dx = clamp(obj_player.x, desired_x + 160, x_max_room_width - 160);

	}
	if obj_player.y  > (desired_y + 90) && obj_player.y < (y_max_room_height - 90)
	{
		dy = clamp(obj_player.y, desired_y + 90, y_max_room_height - 90);
		
	}
	
	if (obj_player.x  > (x_max_room_width - 160) && obj_player.x < (x_max_room_width))
	{
		_camera_x = x_max_room_width-320
	}	
	else
	{
		_camera_x = 160
	}
	
	camera_set_view_pos(camera, _camera_x,    dy-90);
	
	if ((desired_x != current_x) || (desired_y != current_y))
	{
		var dx = clamp(desired_x - current_x, -CAMERA_PAN_SPEED, +CAMERA_PAN_SPEED);
		var dy = clamp(desired_y - current_y, -CAMERA_PAN_SPEED, +CAMERA_PAN_SPEED);
		camera_set_view_pos(camera, current_x + dx, current_y + dy);
	}
	

	
}
*/

/// @description Insert description here

/*
this code will move the camera along the active_room,
*/

//if active room not defined, dont process this step
if( global.active_room == noone )
{exit;}


if( lock )
{

 target_xview = ( ( obj_player.x div view_width ) * view_width );
 target_yview = ( ( obj_player.y div view_heigth ) * view_heigth );

 camera_set_view_pos( 
 view_camera[ 0 ], //la view que se le va a poner la nueva posicion
 scr_slideview( camera_get_view_x( view_camera[ 0 ] ), target_xview, 10 ), //obtener el valor incremental que tendra la view
 scr_slideview( camera_get_view_y( view_camera[ 0 ] ), target_yview, 10 ) );


	if( camera_get_view_x( view_camera[ 0 ] ) == target_xview 
	    && camera_get_view_y( view_camera[ 0 ] ) == target_yview )
	{
	lock = false;
	}


}
else
{
	view_xmin = global.active_room.x;
	view_ymin = global.active_room.y;

	view_xmax = global.active_room.x + global.active_room.sprite_width;
	view_ymax = global.active_room.y + global.active_room.sprite_height;

	camera_set_view_pos
	(
	view_camera[ 0 ],
	clamp( obj_player.x, view_xmin + view_middle_width, view_xmax - view_middle_width  ) - view_middle_width,
	clamp( obj_player.y, view_ymin + view_middle_height, view_ymax - view_middle_height ) - view_middle_height
	);
}

	