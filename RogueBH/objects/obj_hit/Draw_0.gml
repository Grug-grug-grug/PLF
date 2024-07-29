/// @desc ???
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(fn5)
draw_text_ext_transformed(x,y+(counter-20),"+ 1 bullet",noone,noone,.7,.7,0);
counter -= .25

if counter == 0
{
	instance_destroy()
}








