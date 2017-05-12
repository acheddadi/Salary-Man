/// @description Insert description here
// You can write your code in this editor

hspd = 0;

MOVE_SPD = 10;

image_xscale *= 3/2;
image_yscale = image_xscale;

image_index = irandom(image_number - 1);

//call the particle creation script
scr_fire();

//set up the particle emitter
my_emitter = part_emitter_create(global.partsys_fire);