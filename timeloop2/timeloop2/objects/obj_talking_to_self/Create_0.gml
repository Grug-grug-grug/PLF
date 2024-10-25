/// @desc ???
randomise()
/// @desc ???
typist = scribble_typist();
type_speed = random_range(0.05,.1)
typist.in(type_speed, 0);
alarm[0] = 200;

random_number_generator = irandom_range(0,4)

random_text_picker = irandom_range(0,5)
switch random_text_picker
{
	case 0:
		walkover_text = "[fa_centre][c_blue][scale,0.5]la la la"
	break;
	
	case 1:
		walkover_text = "[fa_centre][c_blue][scale,0.5]weeeee"
	break;
	
	case 2:
		walkover_text = "[fa_centre][c_blue][scale,0.5]hmmmm"
	break;
	
	case 3:
		walkover_text = "[fa_centre][c_blue][scale,0.5][wave]helllooo"
	break;
	
	case 4:
		walkover_text = "[fa_centre][c_blue][scale,0.5][jitter]anyone"
	break;

	case 5:
		walkover_text = "[fa_centre][c_blue][scale,0.5][blink]..help.."
	break;
}