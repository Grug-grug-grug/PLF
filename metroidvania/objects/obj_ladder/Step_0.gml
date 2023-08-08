/// @desc ???

switch(state){
	case STATE_LADDER.closed:
		break;
	case STATE_LADDER.opened:
		x = end_position_x;
		y = end_position_y;
		break;
	case STATE_LADDER.opening:
		x = lerp(x,end_position_x,0.1);
		y = lerp(y,end_position_y,0.1);
		
		if x == end_position_x && y = end_position_y
		{
			state = STATE_LADDER.opened;
		}
		break;
}





