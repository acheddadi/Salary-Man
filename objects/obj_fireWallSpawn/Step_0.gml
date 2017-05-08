/// @description Insert description here
// You can write your code in this editor

if (timeElapsed > frequency)
{
	var gapSeed = irandom(density - gapSize - 1);
	
	for (var i = 0; i < density; i++)
	{
		if (i == gapSeed) i += gapSize;
		with(instance_create_layer(room_width + sprite_width, position[i], "Enemies", obj_fire))
		{
			MOVE_SPD = 7;
		}
	}
	timeElapsed = 0;
}

timeElapsed++;