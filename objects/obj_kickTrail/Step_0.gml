/// @description Insert description here
// You can write your code in this editor

// Move speed
currentSpeed = MOVE_SPD + (10 * obj_engine.gamespeed);

speed = currentSpeed;
if ((x < (-sprite_width)) || !instance_exists(obj_kick)) instance_destroy();
image_alpha = opacity;