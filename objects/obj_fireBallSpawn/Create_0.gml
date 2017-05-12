/// @description Insert description here
// You can write your code in this editor

frequency = 25;
density = 17;
sine = 0;
cosine = (density - 1);

sineSpd = 0;
cosineSpd = 0;

var unit = room_height / 12;
var remainder = room_height - (4 * unit);
var spacing = remainder / density;


for (var i = 0; i < density; i++)
{
	position[i] = (2 * unit) + (spacing * i);
}

flip = false;
counter = 0;
timeElapsed = 0;
