/// @description Insert description here
// You can write your code in this editor

timeElapsed = 0;

audio_sound_pitch(snd_explosion, random_range(0.8, 1.2));
audio_play_sound(snd_explosion, 1, false);
obj_engine.SHAKE = 15;

/*if (y < (room_height / 2)) offset = irandom_range(-35, 10);
else offset = irandom_range(-10, 35);

effect_create_below(ef_explosion, x, y + offset, 5, c_red);
effect_create_above(ef_firework, x, y + offset, 5, c_orange);*/