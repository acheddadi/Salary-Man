/// @description Insert description here
// You can write your code in this editor

FREQUENCY = 25;
density = 5;
sine = 0;
cosine = (density - 1);

var unit = room_height / 12;
var remainder = room_height - (4 * unit);
var spacing = remainder / density;


for (var i = 0; i < density; i++)
{
	position[i] = (5/2 * unit) + (spacing * i);
}

spdSin = 1.5;
spdCos = 1.5;
frequencySin = spdSin * FREQUENCY;
frequencyCos = spdCos * FREQUENCY;
flipSin = false;
flipCos = false;
counterSin = 0;
counterCos = 0;
timeElapsedSin = 0;
timeElapsedCos = 0;
