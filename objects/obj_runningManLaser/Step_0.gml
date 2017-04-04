/// @description Insert description here
// You can write your code in this editor

if (explode)
{
	if (targetX < room_width)
	{
		if (timeElapsed > 1)
		{
			instance_create_layer(targetX, targetY, "Enemies", obj_runningManExplosion);
			targetX += 50;
			timeElapsed = 0;
		}
	}
	else
	{
		explode = false;
		instance_destroy();
	}
}

timeElapsed++;