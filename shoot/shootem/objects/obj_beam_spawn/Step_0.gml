/// @desc ???
if obj_boss_1.hp < 140
{
	counter -= 1;

	if counter == 60
	{
		instance_create_layer(-10,spawn_location,"Instances",obj_beam_signpost);
		if obj_boss_1.hp < 60
		{
			instance_create_layer(-10,spawn_location_2,"Instances",obj_beam_signpost);
		}
		
	}
	if counter == 0
	{
		instance_create_layer(-10,spawn_location,"Instances",obj_beam);
		counter = 300;
		spawn_location = random_range(400,770);
		if obj_boss_1.hp < 50
		{
			instance_create_layer(-10,spawn_location_2,"Instances",obj_beam);
			spawn_location_2 = random_range(650,770);
		}
	}
}
