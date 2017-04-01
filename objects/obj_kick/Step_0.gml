/// @description Insert description here
// You can write your code in this editor

// Move speed
currentSpeed = MOVE_SPD * obj_timeLine.gamespeed;

speed = currentSpeed;

if (opacity < 1) object_set_mask(self, spr_null);
else
{
	if (playSound)
	{
		audio_sound_pitch(snd_kick, random_range(0.8, 1.2));
		audio_play_sound(snd_kick, 1, false);
		playSound = false;
	}
}
if (x < (-sprite_width)) instance_destroy();

image_alpha = opacity;

// Explode
if (explode)
{

	if (distance_to_point(lastPlayerPosX, lastPlayerPosY) < distanceToExplode)
	{
		instance_create_layer(x, y, "Enemies", obj_kickExplosionSpawn);
		instance_destroy();
	}
}