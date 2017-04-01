/// @description Insert description here
// You can write your code in this editor

if (heart) instance_destroy(other);
else if(!invincibility)
{
	heart = true;
	effect_create_above(ef_ring, x, y, 1, c_fuchsia);
	audio_play_sound(snd_heart, 1, false);
	instance_destroy(other);
}