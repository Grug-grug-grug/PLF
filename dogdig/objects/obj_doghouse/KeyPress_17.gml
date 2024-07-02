/// @desc ???

if place_meeting(x,y,obj_dog)
{
	instance_create_layer(obj_dog.x,obj_dog.y-20,"Instances",obj_recharged);
	screen_transition(TR_TYPE.CIRCLE_TWOPASS, TR_WAY.TWOPASS, false, c_black, room_restart(), 1, 0, TR_DRAW_TYPE.GUI);
	if obj_global.gold > 100
	{
			obj_global.gold -= 100;
			obj_global.food_max += 5;
			obj_global.water_max += 5;
	}
	obj_global.energy = obj_global.energy_max;
	obj_global.water = obj_global.water_max;
	obj_global.food = obj_global.food_max;

	// coins
	
	// powers
	if obj_global.temp_fast_dig == true
	{
		obj_global.temp_fast_dig = false;
	}
	
	if obj_global.temp_water_dog == true
	{
		obj_global.temp_water_dog = false;
	}
	if obj_global.temp_jump_high == true
	{
		obj_global.temp_jump_high = false;
	}

	if obj_global.temp_power == true
	{
		obj_global.temp_power = false;
	}
}