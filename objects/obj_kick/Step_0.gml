/// @description Insert description here
// You can write your code in this editor


if (opacity < 1) object_set_mask(self, spr_null);
else
{
	if (playSound)
	{
		audio_play_sound(snd_kick, 1, false);
		playSound = false;
	}
}
if (x < (-sprite_width)) instance_destroy();

image_alpha = opacity;