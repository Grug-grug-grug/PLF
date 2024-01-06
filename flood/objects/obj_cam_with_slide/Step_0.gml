/// @description Insert description here

/*
this code will move the camera along the active_room,
*/

//if active room not defined, dont process this step
if( global.active_room == noone )
{exit;}

var _og_camera_x = camera_get_view_x(0);
var _og_camera_y = camera_get_view_y(0);

if (shake) 
{ 
	shake_time -= 1; 
	var _xval = choose(-shake_magnitude, shake_magnitude); 
	var _yval = choose(-shake_magnitude/2, shake_magnitude/2); 
	camera_set_view_pos(view_camera[0], og_camera_x + _xval, og_camera_y + _yval); 

	if (shake_time <= 0) 
	{ 
	    shake_magnitude -= shake_fade; 

	    if (shake_magnitude <= 0) 
	    { 
	       
	        shake = false; 
	    } 
	} 
}	
else
{

og_camera_x = camera_get_view_x(view_get_camera(0));
og_camera_y = camera_get_view_y(view_get_camera(0));
	
view_xmin = global.active_room.x;
view_ymin = global.active_room.y;

view_xmax = global.active_room.x + global.active_room.sprite_width;
view_ymax = global.active_room.y + global.active_room.sprite_height;

targetX = lerp(targetX, obj_player.x, camera_speed);
targetY = lerp(targetY, obj_player.y, camera_speed);


camera_set_view_pos
(
view_camera[ 0 ],
clamp( x + (targetX - x), view_xmin + view_middle_width, view_xmax - view_middle_width  ) - view_middle_width,
clamp( y + (targetY - y), view_ymin + view_middle_height, view_ymax - view_middle_height ) - view_middle_height
);
}
/*
camh = camera_get_view_height(view_camera[0]);
camw = camera_get_view_width(view_camera[0]);

camx += 
camy += ((y - (view_middle_height) - camy) * 0.08)

camera_set_view_pos(view_camera[0], camx, camy);*/
	