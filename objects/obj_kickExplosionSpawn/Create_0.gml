/// @description Insert description here
// You can write your code in this editor

timeElapsed = 0;
spawnCount = 5;

instanceNumber = 12;
instanceNumberReset = instanceNumber;

instanceDirection = irandom_range(-10, 10);
instanceDirectionReset = instanceDirection;

opacity = 1;

MOVE_SPD = 10;

audio_play_sound(snd_kickExplosion, 1, false);