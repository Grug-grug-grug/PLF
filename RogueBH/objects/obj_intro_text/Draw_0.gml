draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(fn5)

var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2
if obj_global.intro_text == 1
{
shadowed_text("wasd to move\nleft click to send corrupted data\ncorrupt data will overflow memory buffers",_x,_y,fn5,fa_center,fa_middle,2,c_white,c_blue,1,.8)


}
else if obj_global.intro_text == 2
{
	
draw_text_shadow(
	"this is a practise\nive marked the vulnerable areas in yellow\nit won't always be this simple\n\nbut you knew that didn't you");
}
else if obj_global.intro_text == 3
{
draw_text_shadow("defensive measures appear when the system is vulnerable\ncorrupt data removes defensive measures"
	);
}
else if obj_global.intro_text == 4
{
draw_text_shadow(
	"ensure you trigger vulns multiple times\nthis will help identify a root vul\n the most desired\n\n\nbut you knew that didn't you");
}
else if obj_global.intro_text == 5
{
draw_text_shadow(
	"repetition is perfection");
}
else if obj_global.intro_text == 6
{
draw_text_shadow(
	".......");
}
else if obj_global.intro_text == 7
{
draw_text_shadow(
	"repeat until perfect");
}
else if obj_global.intro_text == 8 and obj_global.completed_repetitions_required == 8
{
draw_text_shadow(
	"one more then we will do it for real");
}

	














