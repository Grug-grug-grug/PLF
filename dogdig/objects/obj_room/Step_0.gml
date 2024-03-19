/// @description Insert description here

//this code will activate the current room when the 
//player is inside this room
if( x < obj_dog.x
	&& obj_dog.x < x + sprite_width
	&& y < obj_dog.y
	&& obj_dog.y < y + sprite_height)
{
		
		
		if( global.active_room != self )
		{
		global.active_room = self;
		
		if( instance_exists( obj_cam_with_slide ) )
		{
		obj_cam_with_slide.lock = true;
		}
		
//		target_xview = global.active_room.x + global.active_room.sprite_width;
		
		//target_xview = ( (obj_nem.x div view_width ) * view_width );

		
		//scr_slideview( 
		//camera_get_view_x( view_camera[ 0 ] ), 
		//target_xview, 10 
		//);


		}
		
}