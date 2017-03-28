/// @description Insert description here
// You can write your code in this editor

if (heart) instance_destroy(other);
else if(!invincibility)
{
	heart = true;
	audio_sound_pitch(snd_kick, random_range(0.8, 1.2));
	audio_play_sound(snd_heart, 1, false);
	instance_destroy(other);
}