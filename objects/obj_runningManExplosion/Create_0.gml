/// @description Insert description here
// You can write your code in this editor

timeElapsed = 0;

audio_sound_pitch(snd_explosion, random_range(0.8, 1.2));
audio_play_sound(snd_explosion, 1, false);
obj_engine.SHAKE = 10;