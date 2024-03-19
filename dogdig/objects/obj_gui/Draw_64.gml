/// @desc ???
if obj_global.water < 15
{
draw_text_color(70,10,"Water :" + string(int64(obj_global.water)) + "/" + string(obj_global.water_max),c_red,c_red,c_red,c_red,1);
}
else
{
	draw_text(70,10,"Water :" + string(int64(obj_global.water)) + "/" + string(obj_global.water_max));
}

if obj_global.food < 15
{
draw_text_color(70,30,"Food :" + string(int64(obj_global.food)) + "/" + string(obj_global.food_max),c_red,c_red,c_red,c_red,1);
}
else
{
	draw_text(70,30,"Food :" + string(int64(obj_global.food)) + "/" + string(obj_global.food_max));
}
draw_text(70,50,"Gold :" + string(int64(obj_global.gold)));
if obj_global.energy < 15
{
	draw_text_color(70,70,"Energy :" + string(int64(obj_global.energy))+ "/" + string(obj_global.energy_max),c_red,c_red,c_red,c_red,1);
}
else
{
	draw_text(70,70,"Energy :" + string(int64(obj_global.energy)) + "/" + string(obj_global.energy_max));
}
draw_text(70,90,"Deaths :" + string(obj_global.total_deaths));



