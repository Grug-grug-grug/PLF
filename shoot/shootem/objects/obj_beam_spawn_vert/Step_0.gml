/// @desc ???
if global.boss_phase == 2
{
	counter -= 1;

	if dir == 0
		{
		if counter == 3
		{
			instance_create_layer(spawn_location,-10,"Instances",obj_beam_signpost);

		}
		if counter == 0
		{
			instance_create_layer(spawn_location,-10,"Instances",obj_beam_v);
			counter = 5 ;
			spawn_location += 20;

		}
	}
		if dir == 1
		{
		if counter == 3
		{
			instance_create_layer(spawn_location,-10,"Instances",obj_beam_signpost);

		}
		if counter == 0
		{
			instance_create_layer(spawn_location,-10,"Instances",obj_beam_v);
			counter = 5 ;
			spawn_location -= 20 

		}
	}
	
	if spawn_location > 800 and dir == 0
	{
		dir = 1;
		spawn_location = 1350;
		sweep_counter += 1;
	}
	if spawn_location < 400 and dir == 1
	{
		dir = 0;
		spawn_location = 10;
		sweep_counter += 1;
	}
	if sweep_counter > 2
	{
		counter_h -= 1;

		if counter_h == 30
		{
			instance_create_layer(-10,spawn_location_h,"Instances",obj_beam_signpost);

		}
		if counter_h == 0
		{
			instance_create_layer(-10,spawn_location_h,"Instances",obj_beam);
			counter_h = 100 - sweep_counter * 8;
			spawn_location_h = random_range(450,760);

		}
	}
	
}

if sweep_counter == 6 
{
	obj_boss_2.phase = 2;
	instance_destroy();
}
