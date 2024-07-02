function movement_update() {
	// Update velocity
	move_vertical();
	move_horizontal();

	// Move character
	move_in_steps( abs(speed_x) + abs(speed_y) );
	if abs(speed_x) < 0.2
	{
		obj_player.sprite_index = _Idle;
	}
	else if abs(speed_x) > 0.2
	{
		obj_player.sprite_index = _Run;
	}
	 
	obj_global.xspeed = abs(speed_y) ;
	
	/*if speed_y < 0.1 
	{
		obj_player.sprite_index = _JumpFallInbetween;
	}*/
}