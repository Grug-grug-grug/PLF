/// @desc ???
randomize();
block_density = random_range(0.5,1);
sprite_index = spr_dirt;
mask_index = spr_dirt;
image_alpha = block_density;
if block_density > 0.9
{
	image_blend = c_dkgrey;
}
else
{
	image_blend = c_teal;
}
myx = x;
myy = y;
h = 0;
dig_count = 0;
dig_total = block_density * 60;





