if (bg_fade) 
{ 
	var background = layer_background_get_id (layer_get_id (bg_layer));
	if bg_fade_time == 0
	{
		layer_background_alpha(background, 0)
		bg_fade = false; 
	}
	else
	{
		bg_fade_time -= 1; 
		layer_background_alpha(background, bg_fade_time);
	} 
}	

//global.test = obj_player.x;
layer_x("BG3", obj_player.x * -.5); 
layer_x("BG4", obj_player.x * -.15); 