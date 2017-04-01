/// @description Insert description here
// You can write your code in this editor

if (timeElapsed > 10)
{
	instance_create_layer(0, 0, "Effects", obj_speedUp);
	timeElapsed = 0;
}
timeElapsed++;