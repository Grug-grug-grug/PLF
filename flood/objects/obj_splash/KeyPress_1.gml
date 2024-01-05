/// @desc ???

//screen_transition(type, way, async, [color], [callback], [speed], [view_number], [draw_type], [anim_curve]);
//screen_transition(TR_TYPE.FADE, TR_WAY.IN, false, c_white, undefined)
if actual_time > 0
{
screen_transition(TR_TYPE.FADE_TWOPASS, TR_WAY.TWOPASS, false, c_black, room_goto(rm_menu), 0.5, 0, TR_DRAW_TYPE.GUI);
}
/// @desc ???







