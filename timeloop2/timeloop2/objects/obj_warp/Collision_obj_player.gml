/// @desc ???
var _action = function () {
	obj_global_timing_tracker.new_x = new_x
	obj_global_timing_tracker.new_y = new_y
	room_goto(linked_room);
}
screen_transition(TR_TYPE.FADE_TWOPASS, TR_WAY.TWOPASS, false, c_black, _action, 2, 0, TR_DRAW_TYPE.GUI);

