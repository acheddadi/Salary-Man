/// @description Insert description here
// You can write your code in this editor

while (instanceNumber > 0)
{
	instanceDirection += 30;
	with (instance_create_layer(x, y, "Instances", obj_kickExplosion))
	{
		direction = other.instanceDirection;
		image_angle = direction;
		speed = obj_timeLine.gamespeed * other.MOVE_SPD;
	}
	instanceNumber--;
}