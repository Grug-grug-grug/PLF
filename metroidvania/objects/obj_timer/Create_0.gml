/// @desc ???
randomize();
//time = room_speed; // 60 fps by default
//time = 60;
//time_countdown = 60;

music_track = int64(random_range(1,10));

// Song bpm is half of the bpm
/*
switch(music_track)
{
	case 1:	audio_play_sound(track_1,1,	true,.5,1.2); song_bpm = 40; break;
	case 2:	audio_play_sound(track_2,1,true,.5,3.5); song_bpm = 40; break;	
	case 3:	audio_play_sound(track_3,1,	true,.5,.5); song_bpm = 40; break;
	case 4:	audio_play_sound(track_4,1,	true,.5,0.5); song_bpm = 40; break;
	case 5:	audio_play_sound(IBP_Shuttle_Rescue,1,	true,.5,0); song_bpm = 60; break;
	case 6: audio_play_sound(IBP_Unwrapped,1,	true,.5,10.1); song_bpm = 60; break;
	case 7:	audio_play_sound(IBP_Ice_Cream_Monday,1,	true,.5,-1.4); song_bpm = 60; break;
	case 8: audio_play_sound(IBP_Linee_Aeree_Gabagool,1,	true,.5,0.5); song_bpm = 40; break;
	case 9: audio_play_sound(IBP_The_Cheese_Bleus,1,	true,.5,0.6); song_bpm = 40; break;

}*/
song_bpm = 50;
bpm = int64(3600/song_bpm); // 3600 seconds / 50% of the BPM
doublebpm = bpm / 2;
doublebpm_counter = 0;
global.no_beat = bpm;
global.time_left = bpm;

// music


DW_B1 = audio_play_sound(Digital_World_Bass_1,1,true,.6,1.2); 
// first powerup
DW_B3 = audio_play_sound(Digital_World_Bass_3,1,true,0,1.2); 
DW_K2 = audio_play_sound(Digital_World_Kick_2,1,true,0,1.2); 
DW_S1 = audio_play_sound(Digital_World_Snare_1,1,true,0,1.2); 
// jumps in a row
DW_B2 = audio_play_sound(Digital_World_Bass_2,1,true,0,1.2); 
DW_K1 = audio_play_sound(Digital_World_Kick_1,1,true,0,1.2); 
DW_HH = audio_play_sound(Digital_World_Hi_Hat,1,true,0,1.2); 

/*audio_play_sound(track_1,1,	true,.5,1.2);
audio_play_sound(track_1,1,	true,.5,1.2); 
audio_play_sound(track_1,1,	true,.5,1.2);
audio_play_sound(track_1,1,	true,.5,1.2); 
audio_play_sound(track_1,1,	true,.5,1.2);
audio_play_sound(track_1,1,	true,.5,1.2); 
audio_play_sound(track_1,1,	true,.5,1.2);
audio_play_sound(track_1,1,	true,.5,1.2); 
audio_play_sound(track_1,1,	true,.5,1.2);*/


