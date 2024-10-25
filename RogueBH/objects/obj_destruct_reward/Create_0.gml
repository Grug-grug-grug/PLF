/// @desc ???
randomize();
i = irandom_range(0,10);
if i < 5
{
	instance_create_layer(x,y,"Bullets",obj_destruct_cash)
}
instance_destroy()
