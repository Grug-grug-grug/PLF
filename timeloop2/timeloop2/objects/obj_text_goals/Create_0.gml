/// @desc ???
randomise()
/// @desc ???
typist = scribble_typist();
type_speed = random_range(0.01,.1)
typist.in(type_speed, 0);

walkover_text = "[scale,0.5][fa_centre]"

if obj_global_timing_tracker.current_loop > 2
{
	walkover_text = walkover_text + "To do list:\n1.I need to find out what is happening"

}

if obj_global_timing_tracker.current_loop > 3
{
	walkover_text = walkover_text +"\n2.I should see if anyone is around"

}

if obj_global_timing_tracker.current_loop > 4
{
	walkover_text = walkover_text +"\n3.And check the research lab"

}

if obj_global_timing_tracker.current_loop > 5
{
	walkover_text = walkover_text +" \n4.And the bio-lab"

}