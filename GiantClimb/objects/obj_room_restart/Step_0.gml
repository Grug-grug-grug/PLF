/// @desc ???

instance_create_layer(0,0,"Instances",obj_rewind);

with (obj_slope_path_remove)
{
	if path_check = "slope" and array_contains(obj_global.which_path, "slope")
	{
		instance_destroy()
	}
	if path_check = "slope2" and array_contains(obj_global.which_path, "slope2")
	{
		instance_destroy()
	}
	if path_check = "opening" and obj_global.death_count > 3 
	{
		instance_destroy()
	}
	
}

with (obj_wall_path_create)
{

	if path_check = "opening" and obj_global.death_count > 3 
	{
		instance_destroy()
	}
	
}
instance_destroy();









