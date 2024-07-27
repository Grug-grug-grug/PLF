/// @desc ???

with(instance_create_layer(x,y,"Bullets",obj_bullet))
	{
	dire = other.timer;
	hmove = lengthdir_x(.5*other.spd, dire);
	vmove = lengthdir_y(.5*other.spd, dire);
	}
	
alarm[0] = alarmspeed;






