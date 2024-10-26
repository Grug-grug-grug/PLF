/// @desc ???
/// @desc ???
typist = scribble_typist();
type_speed = random_range(0.05,.1);
typist.in(type_speed, 0);
random_number_generator = irandom_range(0,5);

random_text_picker = irandom_range(0,9);
if obj_global_timing_tracker.random_number == 10 or obj_global_timing_tracker.random_number == 9
{
	alarm[0] = 60;
	typist.in(3, 0);
	random_number_generator = irandom_range(1,1);
	switch random_text_picker
	{
		case 0:
			walkover_text = "[bold][fa_centre][c_blue][scale,0.5]WHATISHAPPENING"
		break;
	
		case 1:
			walkover_text = "[bold][fa_centre][c_blue][scale,0.5]HEEELP"
		break;
	
		case 2:
			walkover_text = "[bold][fa_centre][c_blue][scale,0.5]AHHHHH"
		break;
	
		case 3:
			walkover_text = "[bold][fa_centre][c_blue][scale,0.5][wave]HEEEEEELP ME"
		break;
	
		case 4:
			walkover_text = "[bold][fa_centre][c_blue][scale,0.5][jitter]ANYONE?!?!?!"
		break;

		case 5:
			walkover_text = "[bold][fa_centre][c_blue][scale,0.5][blink]helphelphelphelphelphelp"
		break;
		case 6:
			walkover_text = "[bold][fa_centre][c_blue][scale,0.5][wobble]HELPHELPHELPHELPHELPHELP"
		break;
		case 7:
			walkover_text = "[bold][fa_centre][c_blue][scale,0.5][wobble]MAKE IT STOP"
		break;
		case 8:
			walkover_text = "[bold][fa_centre][c_blue][scale,0.5][pulse]I NEED A DRINK NOW"
		break;
		case 9:
			walkover_text = "[bold][fa_centre][c_blue][scale,0.5][wave]I CANT DO THIS"
		break;
	}
}
else
{
	alarm[0] = 200;
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
}