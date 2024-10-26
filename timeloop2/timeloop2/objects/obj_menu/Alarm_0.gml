/// @desc ???
var _action = function () {
	obj_global_timing_tracker.new_x = 90
	obj_global_timing_tracker.new_y = 570
	room_goto(rm_bedroom);
}

screen_transition(TR_TYPE.FADE_TWOPASS, TR_WAY.TWOPASS, false, c_black, _action, 2, 0, TR_DRAW_TYPE.GUI);
			