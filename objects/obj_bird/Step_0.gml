/// @description Insert description here
// You can write your code in this editor

// Move speed
currentSpeed = MOVE_SPD * obj_timeLine.gamespeed;

// Accelerate forward
if (hspd < MOVE_SPD) hspd += ACCELERATION;

// Flip direction
if (vspd == FLY_SPD) dir = false;
else if (vspd == (-FLY_SPD)) dir = true;

// Accelerate up and down
if ((vspd < FLY_SPD) && dir) vspd += ACCELERATION;
else if ((vspd > (-FLY_SPD)) && !dir) vspd -= ACCELERATION; 

x -= hspd;
y += vspd;

if (x < (-sprite_width)) instance_destroy();