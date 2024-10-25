/// @desc ???

//Mapping of how many times each thing has been incremented for the script
my_map = ds_map_create();
ds_map_add(my_map, "wakingup", 0);
ds_map_add(my_map, "opening", 0);
ds_map_add(my_map, "keycode", 0);
ds_map_add(my_map, "doorway", 0);
ds_map_add(my_map, "endloop", 0);
ds_map_add(my_map, "exit_bedroom", 0);
ds_map_add(my_map, "notes_common_1", 0);
ds_map_add(my_map, "left_door_late", 0);
ds_map_add(my_map, "left_door_late_key", 0);
ds_map_add(my_map, "left_door_late_key_note", 0);
ds_map_add(my_map, "my_bed", 0);

bedroom_key_1 = 0;
initial_keycode = 0;
left_door_late = 0;
left_door_key = 0;
got_drink = 0;