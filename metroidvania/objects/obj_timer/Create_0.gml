/// @desc ???
randomize();
time = room_speed; // 60 fps by default
song_bpm = 80;
bpm = int64((time/song_bpm) * 60);
global.no_beat = bpm;
global.time_left = bpm;
global.test2 = 0;
global.actual_time = 0;
audio_play_sound(track_2,1,	true,.5,3.5);