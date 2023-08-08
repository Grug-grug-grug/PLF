
if is_triggered
{
	exit;
}

if target != noone
{
	target.state = STATE_LADDER.opening;
	image_index = 0;
	is_triggered = true;
}



