/// @description Insert description here
// You can write your code in this editor

// Move speed
currentSpeed = MOVE_SPD * obj_timeLine.gamespeed;

// Accelerate forward
if (hspd < currentSpeed) hspd += ACCELERATION;

image_alpha = opacity;

if ((x < (-sprite_width)) || (x > (x + sprite_width))) instance_destroy();
if ((y < (-sprite_height)) || (y > (y + sprite_height))) instance_destroy();