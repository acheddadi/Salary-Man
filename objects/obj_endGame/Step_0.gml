/// @description Insert description here
// You can write your code in this editor

if (opacity < 1)
{
	audio_set_master_gain(0, 1 - opacity)
	opacity += 0.005;
}

else 
{
	if (instance_exists(obj_player)) instance_destroy(obj_player);
	if (size1 < 1) size1 += 0.025;
	else if (size2 < 1) size2 += 0.025;
}
