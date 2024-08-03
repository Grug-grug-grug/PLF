/// @desc ???

if hack_defence == "right"
{
	instance_create_layer(x,y,"Bullets",obj_hack_defence_right)
	instance_destroy();
}
else if hack_defence == "bottom"
{
	instance_create_layer(x,y,"Bullets",obj_hack_defence_bottom)
	instance_destroy();
}
else if hack_defence == "left"
{
		instance_create_layer(x,y,"Bullets",obj_hack_defence_left)
	instance_destroy();
}











