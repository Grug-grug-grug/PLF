/// @desc ???

randomize();
i_alpha = 1;
prize_value = random_range(0,100);
prize_value += y/10
if prize_value > 100 prize_value = 100;
if y > 850 and prize_value > 90
{
	room_goto(Room2)
}
else if prize_value > 50 and prize_value < 60
{
	obj_global.water += 20; 
	d_sprite = spr_water;
}
else if prize_value > 60 and prize_value < 70
{
	d_sprite = spr_food;
	obj_global.food += 20; 
}
else if prize_value > 85 and prize_value < 100
{
	d_sprite = spr_gold;
	obj_global.gold += 20; 
}
else
{
	d_sprite = spr_none;
	
}
mask_index = spr_none;
alarm[0] = 100;

