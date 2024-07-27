function check_collision(_x, _y){
	// Return return if collision is solid
	if (place_meeting(_x, _y, collider) or place_meeting(_x, _y, moving_platforms)) return true;
	
	// Else check if we collide with jump through platform
	if (place_meeting(_x, _y, jump_through_platforms)) {
		if (jump_through < 1) {
			// 6 ? make variable!
			if (place_meeting(_x, _y+6, jump_through_platforms)) return true;
			else jump_through = 1;
		}
	} else jump_through = 0;
}