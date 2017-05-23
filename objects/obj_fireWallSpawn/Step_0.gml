/// @description Insert description here
// You can write your code in this editor

spd = MOVE_SPD * obj_engine.gamespeed;

if (timeElapsed > frequency)
{
	var gapSeed = irandom(density - gapSize - 1);
	
	for (var i = 0; i < density; i++)
	{
		if (i == gapSeed) i += gapSize;
		with(instance_create_layer(room_width + sprite_width, position[i], "Enemies", obj_fire))
		{
			MOVE_SPD = other.spd;
		}
	}
	timeElapsed = 0;
	audio_sound_pitch(snd_fire, random_range(0.8, 1.2));
	audio_play_sound(snd_fire, 1, false);
}

timeElapsed++;