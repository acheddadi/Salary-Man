/// @description Insert description here
// You can write your code in this editor

if (!destroy)
{
	if (size < 1) size += 0.1;
	
}
else
{
	if (size > 0) size -= 0.1;
	else instance_destroy();
}

if (obj_timeLine.gameover) destroy = true;
timeElapsed++;