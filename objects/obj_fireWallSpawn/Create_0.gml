/// @description Insert description here
// You can write your code in this editor

frequency = 35;
density = 12;
gapSize = 5;

var unit = room_height / 12;
var remainder = room_height - (4 * unit);
var spacing = remainder / density;


for (var i = 0; i < density; i++)
{
	position[i] = (5/2 * unit) + (spacing * i);
}

timeElapsed = 0;

MOVE_SPD = 7/3;
spd = 0;