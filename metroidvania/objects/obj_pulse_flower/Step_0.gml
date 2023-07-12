
if global.time_left > 12 and global.time_left < 24
{
	
	image_xscale += 0;

}
else if global.time_left < 30 and global.time_left > 23
{
	
	image_xscale += 0.04;
	image_yscale += 0.04;
	
}
else if global.time_left > 6 and global.time_left < 13
{
	image_xscale  -= 0.04;
	image_yscale  -= 0.04;
}
else
{

	image_xscale -= 0;
} 
