/// @description Insert description here
// You can write your code in this editor

if (!destroy)
{
	if (size < 1) size += 0.1;
	
}
else
{
	if (size > 0) size -= 0.1;
	else if (!endGame) instance_destroy();
}

if (obj_engine.gameover || endGame) destroy = true;
timeElapsed++;