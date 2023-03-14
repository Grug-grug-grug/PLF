// Music
song = choose(_1,_2,_3);

if global.newloop == 1
{
	audio_stop_sound(song);	
}

audio_play_sound(song,9999,true);


