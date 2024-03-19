/// @desc ???

obj_global.food_max += 2;
obj_global.water_max += 2;

obj_global.food += 20000;
obj_global.water += 20000;

obj_global.death_meta[dog_number][0] = -100;
obj_global.death_meta[dog_number][1] = -100;

instance_destroy();

