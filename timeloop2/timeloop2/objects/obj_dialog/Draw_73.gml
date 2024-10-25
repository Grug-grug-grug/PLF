

var _margin_text = 10;
var _margin_char = 40;

if IsChatterbox(chatterbox) and text != undefined
{
	var _me = (ChatterboxGetContentSpeaker(chatterbox, 0) == "Me");
	
	var _yy = camera_get_view_y(view_camera[0])+180;
	
	draw_rectangle_centre(camera_get_view_x(view_camera[0])+180, _yy, camera_get_view_y(view_camera[0]), _margin_text, false, c_black, 0.5);
	
	draw_set_halign(_me ? fa_left : fa_right);
	var _xx = _me ? _margin_text : camera_get_view_x(view_camera[0])+320 - _margin_text;
	draw_text(camera_get_view_x(view_camera[0])+100, camera_get_view_y(view_camera[0])+80, text);
	
	if ChatterboxGetOptionCount(chatterbox)
	{
		draw_set_halign(fa_center);
		
		var _width = 10;
		var _height = 10;
		
		for (var _i = 0; _i < ChatterboxGetOptionCount(chatterbox); _i++)
		{
			if ChatterboxGetOptionConditionBool(chatterbox, _i)
			{
				_xx = room_width / 2;
				_yy = (room_height / 6) * (_i + 2);
				
				draw_rectangle_centre(_xx, _yy, _width, _height, false, c_black, 0.5);
				
				var _icon = "";
				if (option_index == _i) _icon = "> ";
				var _option = ChatterboxGetOption(chatterbox, _i);
				
				draw_text(_xx, _yy, _icon + _option);
			}
		}
	}
}
