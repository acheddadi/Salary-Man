/// @description Insert description here
// You can write your code in this editor

// Move speed
currentSpeed = MOVE_SPD * obj_engine.gamespeed;

// Accelerate forward
if (hspd < currentSpeed) hspd += ACCELERATION;

x -= hspd;
y += vspd;

if ((x < (-sprite_width)) || (x > (x + sprite_width))) instance_destroy();
if ((y < (-sprite_height)) || (y > (y + sprite_height))) instance_destroy();