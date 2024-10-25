/// @desc ???
/// @desc ???
typist = scribble_typist();
type_speed = random_range(0.05,.1)
typist.in(type_speed, 0);
alarm[0] = 200;

random_number_generator = irandom_range(0,10)

random_text_picker = irandom_range(0,9)
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
	case 6:
		walkover_text = "[fa_centre][c_blue][scale,0.5][wobble]please stay with me"
	break;
	case 7:
		walkover_text = "[fa_centre][c_blue][scale,0.5][wobble]can anyone hear me?"
	break;
	case 8:
		walkover_text = "[fa_centre][c_blue][scale,0.5][pulse]I need a drink"
	break;
	case 9:
		walkover_text = "[fa_centre][c_blue][scale,0.5][wave]welp"
	break;
}