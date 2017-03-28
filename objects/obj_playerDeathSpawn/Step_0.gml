/// @description Insert description here
// You can write your code in this editor

while (instanceNumber > 0)
{
	instanceDirection += 10;
	with (instance_create_layer(x, y, "Instances", obj_playerDeath))
	{
		heart = other.heart;
		direction = other.instanceDirection;
		speed = 10;
	}
	instanceNumber--;
}