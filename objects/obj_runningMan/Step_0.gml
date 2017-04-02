/// @description Insert description here
// You can write your code in this editor

var distanceToTravel = sprite_width + room_width;
var durationOfTravel = stopTime * 60;

hspd = distanceToTravel / durationOfTravel;

x += hspd;

if (x >= (room_width + (sprite_width / 2))) instance_destroy();
if (obj_timeLine.gameover) instance_destroy();