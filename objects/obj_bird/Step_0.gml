/// @description Insert description here
// You can write your code in this editor

// Move speed
currentSpeed = MOVE_SPD + (10 * obj_engine.gamespeed);

// Accelerate forward
if (hspd < currentSpeed) hspd += ACCELERATION;

// Flip direction
if (vspd == FLY_SPD) dir = false;
else if (vspd == (-FLY_SPD)) dir = true;

// Accelerate up and down
if ((vspd < FLY_SPD) && dir) vspd += ACCELERATION;
else if ((vspd > (-FLY_SPD)) && !dir) vspd -= ACCELERATION; 

x -= hspd;
y += vspd;

if (x < (-sprite_width)) instance_destroy();