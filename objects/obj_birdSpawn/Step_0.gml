/// @description Insert description here
// You can write your code in this editor
if ((spawnCount > 0) && (timeElapsed > delay))
{
	var thisX = room_width + sprite_width;
	var thisY = irandom_range(rangeTop, rangeBottom);
	instance_create_layer(thisX, thisY, "Enemies", obj_bird);
	spawnCount--;
	timeElapsed = 0;
}
timeElapsed++;

if (spawnCount == 0) instance_destroy();