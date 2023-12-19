/// @description Insert description here
// You can write your code in this editor


x = x + parry * 10 * sin(shoot_angle) ;
y = y + parry * 10 * cos(shoot_angle);

if y > 1000 or y < -10
{
	instance_destroy();
}

