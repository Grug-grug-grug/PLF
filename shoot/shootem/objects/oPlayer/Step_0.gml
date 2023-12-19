/// @description Player Actions

// input
var dx = keyboard_check(vk_right) - keyboard_check(vk_left);
var dy = keyboard_check(vk_down) - keyboard_check(vk_up);

// moving
if (dx != 0 || dy != 0) {
	var dir = point_direction(0, 0, dx, dy);
	motion_add(dir, acc);
	friction = 0;
} else {
	friction = acc;	
}

// limiting speed
speed = clamp(speed, 0, maxSpeed);
