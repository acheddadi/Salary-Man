/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_runningMan)) instance_destroy();

index = obj_runningMan.image_index;
callingX = obj_runningMan.x;
callingY = obj_runningMan.y;

create = true;
destroy = false;
firing = false;
explode = false;

target = 0;
timeElapsed = 0;
firespd = 0;

targetX = 0; targetY = 0;
lastX = 0;
lenTraveled = 0;

eyeCoordinates[0, 0] = 92; eyeCoordinates[0, 1] = 24;
eyeCoordinates[1, 0] = 90; eyeCoordinates[1, 1] = 24;
eyeCoordinates[2, 0] = 92; eyeCoordinates[2, 1] = 24;
eyeCoordinates[3, 0] = 90; eyeCoordinates[3, 1] = 25;
eyeCoordinates[4, 0] = 89; eyeCoordinates[4, 1] = 24;
eyeCoordinates[5, 0] = 90; eyeCoordinates[5, 1] = 25;
eyeCoordinates[6, 0] = 90; eyeCoordinates[6, 1] = 24;
eyeCoordinates[7, 0] = 88; eyeCoordinates[7, 1] = 25;
eyeCoordinates[8, 0] = 91; eyeCoordinates[8, 1] = 25;
eyeCoordinates[9, 0] = 92; eyeCoordinates[9, 1] = 24;
eyeCoordinates[10, 0] = 89; eyeCoordinates[10, 1] = 24;
eyeCoordinates[11, 0] = 90; eyeCoordinates[11, 1] = 25;

for (var i = 0; i < 12; i++)
{
	eyeCoordinates[i, 0] -= 69;
	eyeCoordinates[i, 0] *= obj_runningMan.size;
	eyeCoordinates[i, 1] -= 88;
	eyeCoordinates[i, 1] *= obj_runningMan.size;
}

leftEyeX = eyeCoordinates[index, 0] + callingX; rightEyeX = leftEyeX + (8 * obj_runningMan.size);
leftEyeY = eyeCoordinates[index, 1] + callingY; rightEyeY = leftEyeY;

audio_sound_pitch(snd_laser, 1.5);
audio_play_sound(snd_laser, 1, false);