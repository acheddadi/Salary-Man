/// @description Insert description here
// You can write your code in this editor

if (timeElapsed > frequency)
{
	if (counter == (density - 1))
	{
		counter = 0;
		if (flip) flip = false;
		else flip = true;
	}
	
	if (!flip)
	{
		sine++;
		cosine--;
	}
	else
	{
		sine--;
		cosine++;
	}
	
	with(instance_create_layer(room_width + sprite_width, position[sine], "Enemies", obj_fire))
	{
		MOVE_SPD = 6;
	}
	if (sine != cosine)
	{
		with(instance_create_layer(room_width + sprite_width, position[cosine], "Enemies", obj_fire))
		{
			MOVE_SPD = 6;
		}
	}
	timeElapsed = 0;
	counter++;
}

timeElapsed++;