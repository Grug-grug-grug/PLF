/// @desc ???
pixel_fx = layer_get_fx("die_effect")
cell_size = 1



obj_player.hit = false;
obj_global.player_health -= 1
obj_scr_output.raw_text += "\crpt" + string(obj_global.player_health)
if obj_global.player_health == 0
{
	obj_scr_output.raw_text += "\nmry_crpt\ntotal\nmry_crpt\ntotal\nmry_crpt\ntotal\nmry_crpt\ntotal\nmry_crpt\ntotal\nmry_crpt\ntotal\nmry_crpt\ntotal\nmry_crpt\ntotal"
	obj_player.hit = true;

	alarm[0] = 70;
}
else
{
	instance_destroy();
}
	









