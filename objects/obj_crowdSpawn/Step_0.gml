/// @description Insert description here
// You can write your code in this editor
if ((spawnCount > 0) && (timeElapsed > delay))
{
	instance_create_layer(thisX, thisY, "Enemies", obj_crowd);
	spawnCount--;
	timeElapsed = 0;
}
timeElapsed++;

if (spawnCount == 0) instance_destroy();