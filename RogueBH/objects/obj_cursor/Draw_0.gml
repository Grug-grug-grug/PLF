/// @desc ???



//Draw Event
if mouse_check_button_pressed(mb_left)
{
	cursor_shoot_cooldown = 10;
}
if cursor_shoot_cooldown > 0
{
	draw_sprite_ext(spr_cursor, image_index, mouse_x, mouse_y, cursorXScale*(1+cursor_shoot_cooldown/10), 
					cursorYScale*(1+cursor_shoot_cooldown/10), 0, c_red, 0.5);
	cursor_shoot_cooldown -= 1;
}
else 
{
	draw_sprite_ext(spr_cursor, image_index, mouse_x, mouse_y, cursorXScale, cursorYScale, 0, c_white, 0.4);
}





