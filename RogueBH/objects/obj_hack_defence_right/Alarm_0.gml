/// @desc ???


var _x = irandom_range(500,500)
var _y = irandom_range(140,460)

	with(instance_create_layer(_x, _y, "Instances",obj_runner))
	
	{
		runner_speed = random_range(5,8)*(1+(obj_global.completed_repetitions_required/3));
		hit_wall_die = true
		s_spd = 500;
	}
	
alarm[0] = 30 / (obj_global.completed_repetitions_required + 1)







