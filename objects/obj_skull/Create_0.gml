/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_runningMan)) instance_destroy();

timeElapsed = 0;
hspd = irandom_range(10, 20);
vspd = 0;
bspd = 0;
scale = 0;
rotate = -5;
currentSpeed = 0;

MOVE_SPD = 25;
GRAV = 5;
TERM_VEL = 15;
JUMP = 64;
RAN_DELAY = irandom_range(60, 180);

image_xscale *= 0;
image_yscale *= 0;

x = obj_runningMan.x;
y = obj_runningMan.y + irandom_range(-100, 100);

audio_sound_pitch(snd_skull, random_range(0.8, 1.2));
audio_play_sound(snd_skull, 1, false);