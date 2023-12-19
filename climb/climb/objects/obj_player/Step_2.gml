/// @desc ???




global.whatisx = vsp;
global.whatispx = 1;
global.whatisplayerx = 1;
if place_meeting(x,y+2,obj_foot)
{
	
	obj_player.x= obj_player.x + obj_foot.x- obj_foot.xprevious
	obj_player.y= obj_player.y + obj_foot.y- obj_foot.yprevious
	global.whatisx = 1;
	global.whatispx = obj_foot.y;
	global.whatisplayerx = obj_player.y;
}





