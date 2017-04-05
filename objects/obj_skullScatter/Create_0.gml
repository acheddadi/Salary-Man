/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;

currentSpeed = 0;

MOVE_SPD = 25;
ACCELERATION = 1;

image_xscale *= 2;
image_yscale *= 2;

audio_sound_pitch(snd_skullScatter, random_range(0.8, 1.2));
audio_play_sound(snd_skullScatter, 1, false);