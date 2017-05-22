/// @description Insert description here
// You can write your code in this editor

frequencySin = FREQUENCY / spdSin;
frequencyCos = FREQUENCY / spdCos;

if (timeElapsedSin > frequencySin)
{
	if (counterSin == (density - 1))
	{
		counterSin = 0;
		if (flipSin)
		{
			flipSin = false;
			spdSin = random_range(1, 1.5);
		}
		else flipSin = true;
	}
	
	if (!flipSin) sine++;
	else sine--;
	
	with(instance_create_layer(room_width + sprite_width, position[sine], "Enemies", obj_fire))
	{
		MOVE_SPD = 7 * other.spdSin;
	}
	timeElapsedSin = 0;
	counterSin++;
}
timeElapsedSin++;

if (timeElapsedCos > frequencyCos)
{
	if (counterCos == (density - 1))
	{
		counterCos = 0;
		if (flipCos)
		{
			flipCos = false;
			spdCos = random_range(1, 1.5);
		}
		else flipCos = true;
	}
	
	if (!flipCos) cosine--;
	else cosine++;
	
	if (sine != cosine)
	{
		with(instance_create_layer(room_width + sprite_width, position[cosine], "Enemies", obj_fire))
		{
			MOVE_SPD = 7 * other.spdCos;
		}
	}
	timeElapsedCos = 0;
	counterCos++;
}
timeElapsedCos++;