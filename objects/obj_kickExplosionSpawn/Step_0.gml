/// @description Insert description here
// You can write your code in this editor

if (timeElapsed > 2)
{
	while (instanceNumber > 0)
	{
		instanceDirection += 30;
		if (opacity == 1)
		{
			with (instance_create_layer(x, y, "Instances", obj_kickExplosion))
			{
				direction = other.instanceDirection;
				image_angle = direction;
				speed = other.MOVE_SPD;
			}
		}
		else
		{
			with (instance_create_layer(x, y, "Instances", obj_kickExplosionTrail))
			{
				direction = other.instanceDirection;
				image_angle = direction;
				speed = other.MOVE_SPD;
				opacity = other.opacity;
			}
		}
		instanceNumber--;
	}
	instanceDirection = instanceDirectionReset;
	instanceNumber = instanceNumberReset;
	opacity -= 0.2;
	spawnCount--;
	timeElapsed = 0;
}

timeElapsed++;
if (spawnCount <= 0) instance_destroy();