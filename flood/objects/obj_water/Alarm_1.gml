/// @desc ???


if place_meeting(x,y-8,obj_wall) and
place_meeting(x+8,y,obj_wall) and
place_meeting(x-8,y,obj_wall) and
place_meeting(x,y+8,obj_wall)
{
	
	draw_sprite_ext(spr_deepwater,0,x,y,1,1,0,c_white,1);
	instance_destroy();
}




