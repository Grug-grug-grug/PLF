/// @desc ???

if place_meeting(x,y-4,obj_player) or
place_meeting(x+4,y,obj_player) or
place_meeting(x-4,y,obj_player) or
place_meeting(x,y+4,obj_player)
{
	if obj_player.crowbar_swing
	{
		
		if place_meeting(x,y-8,obj_water) or
			place_meeting(x+8,y,obj_water) or
			place_meeting(x-8,y,obj_water) or
			place_meeting(x,y+8,obj_water) or 
			place_meeting(x,y-8,obj_deepwater) or
			place_meeting(x+8,y,obj_deepwater) or
			place_meeting(x-8,y,obj_deepwater) or
			place_meeting(x,y+8,obj_deepwater) or
			place_meeting(x,y-8,obj_deepwaterstatic) or
			place_meeting(x+8,y,obj_deepwaterstatic) or
			place_meeting(x-8,y,obj_deepwaterstatic) or
			place_meeting(x,y+8,obj_deepwaterstatic)
			{
				instance_create_layer(x,y,"player",obj_water);
			}
		instance_destroy();
	}
}




