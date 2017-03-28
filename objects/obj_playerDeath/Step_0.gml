/// @description Insert description here
// You can write your code in this editor

if(heart)
{
	sprite_index = spr_heartDeath;
	image_xscale = 1;
	image_yscale = 1;
}

if ((x < (-sprite_width)) || (x > (x + sprite_width))) instance_destroy();
if ((y < (-sprite_height)) || (y > (y + sprite_height))) instance_destroy();