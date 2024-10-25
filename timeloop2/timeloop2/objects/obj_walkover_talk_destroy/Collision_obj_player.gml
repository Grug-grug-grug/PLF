/// @desc ???
//with (obj_textbox_generator) {instance_destroy();}
var _dialog = instance_create_layer(obj_player.x-10, obj_player.y + 50,"Instances",obj_textbox_generator,
{
	dialog_line : walkover_text
});
ds_map_add(obj_global_current_loop.my_map, walkover_text, 1);
instance_destroy();