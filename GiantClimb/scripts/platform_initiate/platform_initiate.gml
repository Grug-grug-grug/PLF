function platform_initiate(){
	for (var i = 0; i < argument_count; i += 2) {
		positions_x[i] = argument[i]; 
		positions_y[i+1] = argument[i+1]; 
	}
}