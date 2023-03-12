/// Warp logic

if place_meeting(x,y,obj_player) == true
	{
		room_goto(target_rm);
		obj_player.x = target_x;
		obj_player.y = target_y;
	}


