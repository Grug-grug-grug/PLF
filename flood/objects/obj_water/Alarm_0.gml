/// @desc ???

if wspeed <85	
{
	modifer = 1;
}
else if wspeed > 84
{
	modifer = 3;
}

if !place_meeting(x+8*modifer,y,obj_wall)
{
	instance_create_layer(x+8*modifer,y,"player",obj_water);
}

if !place_meeting(x-8*modifer,y,obj_wall) 
{
	instance_create_layer(x-8*modifer,y,"player",obj_water);
}

if !place_meeting(x,y+8*modifer,obj_wall)
{
	instance_create_layer(x,y+8*modifer,"player",obj_water);
}

if !place_meeting(x,y-8*modifer,obj_wall)
{
	instance_create_layer(x,y-8*modifer,"player",obj_water);
}

if place_meeting(x,y-8,obj_wall) and
place_meeting(x+8,y,obj_wall) and
place_meeting(x-8,y,obj_wall) and
place_meeting(x,y+8,obj_wall)
{
	instance_create_layer(x,y,"player",obj_deepwater)
	instance_destroy();
}
alarm[0] = obj_global.water_alarm;



