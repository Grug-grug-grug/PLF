/// @desc ???
current_no_tracks = 0
new_song = snd_track_2
//check if you already have song
if obj_global_timing_tracker.current_loop == 1
{
	instance_destroy()
}
else
{
	for (i = 0; i < ds_map_size(obj_music.my_map) - 1; i += 1)
	{
		if ds_map_find_value(obj_music.my_map, i) = new_song
		{
			instance_destroy()
		}
	}
}