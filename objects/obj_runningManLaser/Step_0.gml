/// @description Insert description here
// You can write your code in this editor

if (explode)
{
	if (explodeX < room_width)
	{
		if (timeElapsed > 20)
		{
			instance_create_layer(explodeX, targetY, "Enemies", obj_runningManExplosion);
			explodeX += (room_width / 9);
			timeElapsed = 0;
		}
	}
	else
	{
		explode = false;
	}
}

timeElapsed++;