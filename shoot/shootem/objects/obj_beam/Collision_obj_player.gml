/// @desc ???

if hit_player > 0
{
	if place_meeting(x,y,obj_shield) {obj_shield.hp -= 2}
	else
	{
	obj_player.hp -= 1;
	}
	hit_player -= 1;
}



