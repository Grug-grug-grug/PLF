/// @desc ???



/// @desc ???

with(instance_create_layer(x,y,"Bullets",obj_bullet))
	{
	dire = point_direction(x,y, obj_player.x, obj_player.y);
	hmove = lengthdir_x(.5*other.s_spd, dire);
	vmove = lengthdir_y(.5*other.s_spd, dire);
	}
	
alarm[0] = s_alarmspeed;














