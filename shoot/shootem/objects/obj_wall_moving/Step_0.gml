/// @desc ???

if h_moving == "left"
{
	x -= hsp;
	boundaries_x -= hsp;
	if boundaries_x < 0 {
		h_moving = "right"
		hsp = random_range(0.5,3);
		}
	
}

if h_moving == "right"
{
	x += hsp;
	boundaries_x += hsp;
	if boundaries_x > 400 {
		h_moving = "left"
		hsp = random_range(0.5,3);
		}
	
}

if v_moving == "up"
{
	y -= vsp;
	boundaries_y -= vsp;
	if boundaries_y < 0 {
		v_moving = "down"
		vsp = random_range(0.5,3);
		}
	
}

if v_moving == "down"
{
	y += vsp;
	boundaries_y += vsp;
	if boundaries_y > 400 {
		v_moving = "up"
		vsp = random_range(0.5,3);
		}
	
}


if place_meeting(x+10,y,obj_player){
	obj_player.x += 10;
}

if place_meeting(x-10,y,obj_player){
	obj_player.x -= 10;
}

if place_meeting(x,y+10,obj_player){
	obj_player.y += 10;
}

if place_meeting(x,y-10,obj_player){
	obj_player.y -= 10;
}