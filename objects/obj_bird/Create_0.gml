/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;
currentSpeed = 0;

randomColor = choose(c_white, c_yellow);
randomScale = random_range(0.5, 1.25);
ACCELERATION = 1;
MOVE_SPD = randomScale * 15;
FLY_SPD = 6;
image_blend = randomColor;
image_xscale *= randomScale;
image_yscale *= randomScale;

dir = choose(true, false);