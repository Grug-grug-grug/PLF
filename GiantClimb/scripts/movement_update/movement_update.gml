function movement_update() {
	// Check if moved by platform and move player accordingly
	check_moving_platforms();
	
	// Update velocity
	move_vertical();
	move_horizontal();

	// Move character
	move_in_steps( abs(speed_x) + abs(speed_y) );
}