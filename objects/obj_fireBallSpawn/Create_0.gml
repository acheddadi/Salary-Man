/// @description Insert description here
// You can write your code in this editor

frequency = 25;
density = 5;
sine = 0;
cosine = (density - 1);

var unit = room_height / 12;
var remainder = room_height - (2 * unit);
var spacing = remainder / density;


for (var i = 0; i < density; i++)
{
	position[i] = (2 * unit) + (spacing * i);
}

spdSin = 1;
spdCos = 1;
frequencySin = spdSin * frequency;
frequencyCos = spdCos * frequency;
flipSin = false;
flipCos = false;
counterSin = 0;
counterCos = 0;
timeElapsedSin = 0;
timeElapsedCos = 0;

MOVE_SPD = 7/3;
spd = 0;
