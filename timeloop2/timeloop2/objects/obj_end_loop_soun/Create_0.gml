/// @desc ???
if obj_global_timing_tracker.time_tracker < 5
{
var _snd = audio_play_sound(snd_fade_out, 10, false,.25);
}
else 
{
var _snd = audio_play_sound(snd_fade_in, 10, false,.25);
}
alarm[0] = 120