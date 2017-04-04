/// @description Insert description here
// You can write your code in this editor

var scaleRatio = room_width / sprite_width;
image_xscale *= scaleRatio;

MOVE_SPD = -50;

x = room_width + (sprite_width / 2);
y = random_range(room_height / 3, 2 * room_height / 3);

speed = MOVE_SPD * obj_engine.gamespeed;