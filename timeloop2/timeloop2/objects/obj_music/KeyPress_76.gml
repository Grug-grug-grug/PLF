/// @desc ???
current_length = ds_map_size(my_map)
audio_stop_sound(next_song)
incrementer += 1
if incrementer > current_length-1 {incrementer = 0}
next_song = ds_map_find_value(my_map,incrementer)
if next_song != 0
{
	audio_play_sound(next_song,5,true,0.25,3)
}