/// @description Insert description here
// You can write your code in this editor

hspd = MOVE_SPD * obj_engine.gamespeed;

x -= hspd;
if (x < -sprite_width) instance_destroy();