/// @desc ???



if water > water_max water = water_max;
if food > food_max food = food_max;

water -= 0.025;
food -= 0.025;
energy -= 0.05;


if energy < 0 or food < 0 or water < 0
{
	death_meta[total_deaths][0] = obj_dog.x;
	death_meta[total_deaths][1] = obj_dog.y;
	death_meta[total_deaths][2] = new_dog_col;
	food_max -= 5;
	water_max -= 5;
	total_deaths += 1;
	screen_transition(TR_TYPE.CIRCLE_TWOPASS, TR_WAY.TWOPASS, false, c_black, room_restart(), 3, 0, TR_DRAW_TYPE.GUI);
	obj_dog.x = 63;
	obj_dog.y = 33;
	new_dog_col = make_color_rgb(irandom(255),irandom(255),irandom(255));
	obj_dog.image_blend = new_dog_col;
	water = water_max;
	food = food_max;
	energy = energy_max;
	
	if temp_power == true
	{
		if fast_dig == 2 && temp_fast_dig == true
		{
			fast_dig = 1;
			temp_power = false;
			temp_fast_dig = false;
		}
		
		if water_dog == true && temp_water_dog == true
		{
			water_dog = false;
			temp_power = false;
			temp_water_dog = false;
		}
		if jump_high == 4 && temp_jump_high == true
		{
			jump_high = 2;
			temp_power = false;
			temp_jump_high = false;
		}
	}
	
}

