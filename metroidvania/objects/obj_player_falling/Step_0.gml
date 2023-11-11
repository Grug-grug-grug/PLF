/// @description Core Player Logic
polygon = polygon_from_instance(id);



	
// Get Player inputs
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _down = keyboard_check(vk_down);
var _up = keyboard_check(vk_up);

var _input_h =  _right - _left;
var _input_v = _down - _up;
move_and_collide(_input_h*walksp/1.5,_input_v*walksp/3.5,obj_wall);
			