/// @desc ???
dire = point_direction(x,y, obj_player.x, obj_player.y);

var _hmove = lengthdir_x(spd, dire);
var _vmove = lengthdir_y(spd, dire);

x = x + _hmove;
y = y + _vmove;