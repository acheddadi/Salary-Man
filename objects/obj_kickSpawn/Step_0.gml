/// @description Insert description here
// You can write your code in this editor

if (timeElapsed > 2)
{
	with (instance_create_layer(room_width + sprite_width, 384, "Enemies", obj_kick))
	{
		opacity = other.opacity;
		lastPlayerPosX = other.lastPlayerPosX;
		lastPlayerPosY = other.lastPlayerPosY;
		image_angle = point_direction(x, y, lastPlayerPosX, lastPlayerPosY);
		direction = point_direction(x, y, lastPlayerPosX, lastPlayerPosY);
		speed = 20;
	}
	spawnCount--;
	opacity -= 0.2;
	timeElapsed = 0;
}
timeElapsed++;
if (spawnCount <= 0) instance_destroy();