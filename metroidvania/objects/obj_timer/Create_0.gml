/// @desc ???
randomize();
time = room_speed; // 60 fps by default
song_bpm = 60;
bpm = ((time/song_bpm) * 60);
doublebpm = bpm / 2;
doublebpm_counter = 0;
global.no_beat = bpm;
global.time_left = bpm;

//audio_play_sound(track_1,1,	true,.5,1.2);
//audio_play_sound(track_2,1,	true,.5,3.5);
//audio_play_sound(track_3,1,	true,.5,.5);
//audio_play_sound(track_4,1,	true,.5,0.5);

audio_play_sound(IBP_Shuttle_Rescue,1,	true,.5,0);
