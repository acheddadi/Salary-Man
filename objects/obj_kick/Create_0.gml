/// @description Insert description here
// You can write your code in this editor
playSound = true;
if (instance_exists(obj_player))
{
	lastPlayerPosX = obj_player.x;
	lastPlayerPosY = obj_player.y;
}
else
{
	lastPlayerPosX = 0;
	lastPlayerPosY = 0;
}
opacity = 1;

image_xscale *= 1.5;
image_yscale *= 1.5;
image_angle = point_direction(x, y, lastPlayerPosX, lastPlayerPosY);
direction = point_direction(x, y, lastPlayerPosX, lastPlayerPosY);
speed = 20;