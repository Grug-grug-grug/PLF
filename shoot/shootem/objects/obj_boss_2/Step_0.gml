/// @description Insert description here
// You can write your code in this editor


if phase == 1
{
	boss_spin -=  20
	image_angle = boss_spin;
}

if phase == 2
{
	global.boss_phase = 3
	instance_create_layer(0,0,"Instances",obj_baddie_spawn_spiral);
	phase += 1;
		layer_vspeed("Backgrounds_2",14/3 * global.rot_speed);
	layer_vspeed("Backgrounds_1",10/3 * global.rot_speed);
	layer_vspeed("Background",4/3 * global.rot_speed);
	layer_vspeed("Backgrounds_3", .2 * global.rot_speed);
}

if phase_3 > 3
{
	if phase_3 == 4
	{
		room_goto_next();
		obj_player.x = 650;
		obj_player.y = 380;
	}
}