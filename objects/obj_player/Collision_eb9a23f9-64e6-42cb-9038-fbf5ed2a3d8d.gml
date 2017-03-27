/// @description Insert description here
// You can write your code in this editor

if (heart && !invincibility)
{
	heart = false;
	with (instance_create_layer(x, y, "Instances", obj_heart)) hspd = 10;
}

if (!invincibility)
{
	SHAKE = 15;
	invincibility = true;
	alarm[0] = INV_DELAY;
}