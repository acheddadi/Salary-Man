/// @description Insert description here
// You can write your code in this editor

if (currentLayer == "BossFloor")
{
	switch (image_index)
	{
		case 0: case 6:
		obj_engine.SHAKE = 5;
		audio_sound_pitch(snd_footstep, random_range(0.6, 0.8));
		audio_play_sound(snd_footstep, 1, false);
		break;
	}
}

var distanceToTravel = sprite_width + room_width;
var durationOfTravel = stopTime * 60;

hspd = distanceToTravel / durationOfTravel;

x += hspd;

if (x >= (room_width + (sprite_width / 2))) instance_destroy();
if (obj_engine.gameover) instance_destroy();