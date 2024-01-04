/// @desc ???

hmove = (- keyboard_check(vk_left) + keyboard_check(vk_right)) * spd;
vmove = (- keyboard_check(vk_up) + keyboard_check(vk_down)) * spd;


move_and_collide(hmove,vmove,obj_wall);


	



