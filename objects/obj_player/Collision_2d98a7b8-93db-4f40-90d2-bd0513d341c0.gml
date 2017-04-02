/// @description Insert description here
// You can write your code in this editor

gold = true;
heart = true;
effect_create_above(ef_ring, x, y, 1, c_yellow);
audio_play_sound(snd_heart, 1, false);
instance_destroy(other);