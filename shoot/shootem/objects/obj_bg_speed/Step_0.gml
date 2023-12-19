/// @desc ???



layer_vspeed("Backgrounds_2",bg2_p);
layer_vspeed("Backgrounds_1",bg1_p);
layer_vspeed("Background",bg_p);
layer_vspeed("Backgrounds_3", bg3_p);

if global.boss_phase == 1
{
	bg2 = 14/4 * global.rot_speed;
	bg1 = 10/4 * global.rot_speed;
	bg = 4/4 * global.rot_speed;
	bg3 = 1/4 * global.rot_speed;
}
else if global.boss_phase == 2
{
	bg2 = 0;
	bg1 = 0;
	bg = 0;
	bg3 = 0;
}
else if global.boss_phase == 3
{
	bg2 = 14/4 * global.rot_speed;
	bg1 = 10/4 * global.rot_speed;
	bg = 4/4 * global.rot_speed;
	bg3 = 1/4 * global.rot_speed;
}

bg_p = lerp(bg_p,bg,0.01);
bg1_p = lerp(bg1_p,bg1,0.01);
bg2_p = lerp(bg2_p,bg2,0.01);
bg3_p = lerp(bg3_p,bg3,0.01);