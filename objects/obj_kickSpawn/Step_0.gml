/// @description Insert description here
// You can write your code in this editor

if (timeElapsed > 2)
{
	if (opacity == 1)
	{
		with (instance_create_layer(room_width + sprite_width, 384, "Enemies", obj_kick))
		{
			explode = other.explode;
			opacity = other.opacity;
			lastPlayerPosX = other.lastPlayerPosX;
			lastPlayerPosY = other.lastPlayerPosY;
			image_angle = point_direction(x, y, lastPlayerPosX, lastPlayerPosY);
			direction = point_direction(x, y, lastPlayerPosX, lastPlayerPosY);
		}
	}
	else
	{
		with (instance_create_layer(room_width + sprite_width, 384, "Enemies", obj_kickTrail))
		{
			opacity = other.opacity;
			lastPlayerPosX = other.lastPlayerPosX;
			lastPlayerPosY = other.lastPlayerPosY;
			image_angle = point_direction(x, y, lastPlayerPosX, lastPlayerPosY);
			direction = point_direction(x, y, lastPlayerPosX, lastPlayerPosY);
		}
	}
	spawnCount--;
	opacity -= 0.2;
	timeElapsed = 0;
}
timeElapsed++;
if (spawnCount <= 0) instance_destroy();