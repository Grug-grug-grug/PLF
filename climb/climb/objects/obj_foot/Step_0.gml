/// @desc ???
if movingTo == 1
{
	move_towards_point(x1,y1,.25);
}
if movingTo == 2
{
	move_towards_point(x2,y2,.25);
	
}
if movingTo == 0
{
	move_towards_point(x0,y0,.25);
	
}


if round(x) == round(x2) and round(y) == round(y2)
{
	movingTo = 0;
}

if round(x) == round(x0) and round(y) == round(y0)
{
	movingTo = 1;
}
if round(x) == round(x1) and round(y) == round(y1)
{
	movingTo = 2;
}
