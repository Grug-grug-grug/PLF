/// @desc ???
x = obj_player.x;
y = obj_player.y;
parry_counter -= 1;
if keyboard_check_pressed(vk_control) and parry_counter < 0
{
image_alpha = 1;
mask_index = spr_parry;
alarm[0] = parry_length;
parry_counter = 50;
obj_player.shoot_rate = 50;
}











