/// @desc ???
//
img_alpha -= 0.01;

if phase == "warn"
{
	mask_index = spr_blank	
}
if phase == "shoot" and img_alpha > 0.3
{
	

mask_index = noone
}