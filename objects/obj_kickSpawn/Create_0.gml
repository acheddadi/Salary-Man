/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	lastPlayerPosX = obj_player.x;
	lastPlayerPosY = obj_player.y;
}
else
{
	lastPlayerPosX = 0;
	lastPlayerPosY = 0;
}
spawnCount = 5;
timeElapsed = 60;
opacity = 1;