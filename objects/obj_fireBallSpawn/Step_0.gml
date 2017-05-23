/// @description Insert description here
// You can write your code in this editor

spd = MOVE_SPD * obj_engine.gamespeed;

frequencySin = frequency / spdSin;
frequencyCos = frequency / spdCos;

if (timeElapsedSin > frequencySin)
{
	if (counterSin == (density - 1))
	{
		counterSin = 0;
		if (flipSin)
		{
			flipSin = false;
			spdSin = random_range(0.8, 1.6);
		}
		else flipSin = true;
	}
	
	if (!flipSin) sine++;
	else sine--;
	
	audio_sound_pitch(snd_fire, random_range(0.8, 1.2));
	audio_play_sound(snd_fire, 1, false);
	with(instance_create_layer(room_width + sprite_width, position[sine], "Enemies", obj_fire))
	{
		MOVE_SPD = other.spd * other.spdSin;
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
			spdCos = random_range(0.8, 1.2);
		}
		else flipCos = true;
	}
	
	if (!flipCos) cosine--;
	else cosine++;
	
	if (sine != cosine)
	{
		audio_sound_pitch(snd_fire, random_range(0.8, 1.2));
		audio_play_sound(snd_fire, 1, false);
		with(instance_create_layer(room_width + sprite_width, position[cosine], "Enemies", obj_fire))
		{
			MOVE_SPD = 7 * other.spdCos;
		}
	}
	timeElapsedCos = 0;
	counterCos++;
}
timeElapsedCos++;