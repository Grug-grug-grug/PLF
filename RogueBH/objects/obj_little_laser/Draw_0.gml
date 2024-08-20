/// @desc ???

if phase == "warn"
{
	draw_sprite_ext(spr_laser_warning_small,0,x,y,image_xscale_local,image_yscale_local,0,c_white,img_alpha)
	mask_index = spr_blank	
}
if phase == "shoot" and img_alpha > 0.3
{
	
	draw_sprite_ext(spr_laser_small,0,x,y,image_xscale_local,image_yscale_local,0,c_white,img_alpha)

mask_index = spr_blank
}