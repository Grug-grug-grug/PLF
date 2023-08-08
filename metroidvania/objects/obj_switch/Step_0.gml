/// @desc ???

if target == noone
{
	for(var cnt = 0; cnt < instance_number(objname);cnt++)
	{
		var instance = instance_find(objname, cnt);
		
		if instance.name == door_to_open
		{
			target = instance;
			break;
		}
	}
}






