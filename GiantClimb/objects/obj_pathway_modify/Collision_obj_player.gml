/// @desc ???

array_push(obj_global.which_path, this_path);
if is_alt_path
{
	with(obj_pathway_modify) {
		for (var _j=0; _j < array_length(other.alt_path); _j++)
		{
			if this_path == other.alt_path[_j]
			{
			instance_destroy();
			}
		}
	}
}

instance_destroy();
