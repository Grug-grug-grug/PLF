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
ds_map_add(my_map, "stuck_in_loungeroom", 0);
ds_map_add(my_map, "other_bedroom_door", 0);
ds_map_add(my_map, "top_left_bedroom", 0);
ds_map_add(my_map, "creepywakeup", 0);

// list of items you can pick up
//reset after each loop
bedroom_key_1 = 0;
left_door_late = 0;
left_door_key = 0;
got_drink = 0;
creepy_event = 0;
creepy_event_next_loop_dialog = 0;

// permenant
check_top_left_bedroom = 0;
initial_keycode = 0;
headset = 0;