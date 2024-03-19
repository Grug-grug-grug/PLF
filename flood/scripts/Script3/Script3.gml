
function screenshake(_time, _magnitude, _fade)
{
   with (obj_screenshake)
   {
      shake = true;
      shake_time = _time;
      shake_magnitude = _magnitude;
      shake_fade = _fade;
   }
}

function start_level(_rm_name)
{
	room_goto(_rm_name);
	obj_stats.total_time = 0;
	obj_stats.this_run = 0;
	obj_stats.saved = 0;
	obj_stats.lost = 0;
	obj_stats.start_time = 0;
	obj_stats.actual_time = 0;
	obj_stats.this_run_time = 0;
	obj_stats.die = 0;
}

function die_to_water()
{
	obj_stats.this_run_time = 0;
	obj_stats.die += 1;
	obj_stats.saved = 0;
	obj_stats.lost = 0;
	room_restart();
}