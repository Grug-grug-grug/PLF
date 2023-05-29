/// @desc ???


length_oxy = int64(global.time_left);
draw_set_font(global.newFontLarge);
draw_text(x-850,y-490,"Oxygen left:");
draw_sprite_ext(spr_oxy,0,x-620,y-480,length_oxy,1,0,c_red,1);
if length_oxy == 0
{
	instance_destroy();
}