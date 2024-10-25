/// @desc ???
randomise()
/// @desc ???
typist = scribble_typist();
type_speed = random_range(0.01,.1)
typist.in(type_speed, 0);
alarm[0] = 1;

random_number_generator = irandom_range(0,4)
random_number_generator_text = irandom_range(0,4)
random_x = irandom_range(70,1000)
random_y = irandom_range(70,650);
switch random_number_generator_text
{
	case 0:
		creepy_text = "ive been here before"
	break;
	case 1:
		creepy_text = "it haunts me"
	break;
	case 2:
		creepy_text = "GETOUT"
	break;
	case 3:
		creepy_text = "i never knew this could happen to me"
	break;
	case 4:
		creepy_text = "please stay with me"
	break;
}
walkover_text = "[c_red][scale,"+string(random_number_generator)+"]" + creepy_text

