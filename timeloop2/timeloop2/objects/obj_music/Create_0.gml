/// @desc ???
// starts playing a sound when you first turn it on
audio_play_sound(snd_track_1,5,true,0.25,3)
song_1 = snd_track_1
my_map = ds_map_create();
ds_map_add(my_map, 0, 0);
ds_map_add(my_map, 1, song_1);
next_song = snd_track_1
incrementer = 1
current_length = ds_map_size(my_map)