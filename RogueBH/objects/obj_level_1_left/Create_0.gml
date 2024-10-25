/// @desc ???
if obj_global.completed_repetitions_required == 0
{
	image_index =0
	mask_index = 0
}
else if obj_global.completed_repetitions_required == 1
{
	image_index =1
	
	mask_index = 1
}
else if obj_global.completed_repetitions_required >1
{
	image_index =2
	mask_index = 2
}