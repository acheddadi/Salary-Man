/// @description Insert description here
// You can write your code in this editor

// Move speed
currentSpeed = MOVE_SPD * obj_timeLine.gamespeed;

speed = currentSpeed;
if (x < (-sprite_width)) instance_destroy();
image_alpha = opacity;