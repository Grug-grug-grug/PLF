/// @desc ???

switch(state){
	case STATE_LADDER.closed:
		image_alpha = 0;
		mask_index = noone;
		break;
	case STATE_LADDER.opened:
		x = end_position_x;
		y = end_position_y;
		break;
	case STATE_LADDER.opening:
		x = lerp(x,end_position_x,0.1);
		y = lerp(y,end_position_y,0.1);
		image_alpha = 1;
		mask_index = spr_ladder_long;
		if x == end_position_x && y = end_position_y
		{
			state = STATE_LADDER.opened;
		}
		break;
}





