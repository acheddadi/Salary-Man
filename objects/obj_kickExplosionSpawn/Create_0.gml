/// @description Insert description here
// You can write your code in this editor

instanceNumber = 12;
instanceDirection = irandom_range(-10, 10);
if (!audio_is_playing(snd_kick)) audio_play_sound(snd_kick, 1, false);

MOVE_SPD = 10;