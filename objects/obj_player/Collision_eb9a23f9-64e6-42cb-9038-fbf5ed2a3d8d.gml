/// @description Insert description here
// You can write your code in this editor
if (!heart && !invincibility && !gold)
{
	instance_create_layer(x, y, "Instances", obj_playerDeathSpawn);
	if (instance_exists(obj_heart))
	{
		with (instance_create_layer(obj_heart.x, obj_heart.y, "Instances", obj_playerDeathSpawn))
		{
			heart = true;
		}
		instance_destroy(obj_heart);
	}
	instance_destroy();
}
if (heart && !invincibility && !gold)
{
	heart = false;
	with (instance_create_layer(x, y, "Instances", obj_heart)) hspd = 10;
}
if (!invincibility && !gold)
{
	audio_sound_pitch(snd_damage, random_range(0.8, 1.2));
	audio_play_sound(snd_damage, 1, false);
	obj_engine.SHAKE = 15;
	invincibility = true;
	alarm[0] = INV_DELAY;
}
if (gold && !invincibility)
{
	if (!audio_is_playing(snd_damage))
	{
		audio_sound_pitch(snd_damage, random_range(0.8, 1.2));
		audio_play_sound(snd_damage, 1, false);
	}
	invincibility = true;
	alarm[0] = INV_DELAY;
	obj_engine.SHAKE = 15;
	ghp--;
}