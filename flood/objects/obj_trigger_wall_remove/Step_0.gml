/// @desc ???



if place_meeting(x,y-8,obj_water) or
place_meeting(x+8,y,obj_water) or
place_meeting(x-8,y,obj_water) or
place_meeting(x,y+8,obj_water)
{
	
	instance_destroy();
}



