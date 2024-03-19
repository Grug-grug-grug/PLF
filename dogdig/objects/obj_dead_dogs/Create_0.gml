/// @desc ???

for(var _i=0; _i<array_length(obj_global.death_meta); _i++)
{
    var _x = obj_global.death_meta[_i][0];
	var _y = obj_global.death_meta[_i][1];
	var _new_col = obj_global.death_meta[_i][2];
	var _inst = instance_create_layer(_x,_y,"prizes",obj_death)
	with _inst {
		new_col = _new_col;
		dog_number = _i;
	}
	
}





