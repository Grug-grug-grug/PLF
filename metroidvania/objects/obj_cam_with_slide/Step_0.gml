/// @description Insert description here

/*
this code will move the camera along the active_room,
*/

//if active room not defined, dont process this step
if( global.active_room == noone )
{exit;}


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


	