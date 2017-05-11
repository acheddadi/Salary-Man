/// @description Insert description here
// You can write your code in this editor

if (timeElapsed == 4)
{
	if (index < image_number) index++;
	else index = 0;
	timeElapsed = 0;
}

if (currentX < -room_width) currentX = 0;

timeElapsed++;

hspd = -MOV_SPEED * obj_engine.gamespeed;
vspd = 0;

currentX += hspd;
currentY += vspd;