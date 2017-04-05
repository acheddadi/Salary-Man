/// @description Insert description here
// You can write your code in this editor

if (timeElapsed > 2)
{
	while (instanceNumber > 0)
	{
		instanceDirection += 30;
		var vecX = dcos(instanceDirection), vecY = dsin(instanceDirection);
		var currentSpeed = MOVE_SPD * obj_engine.gamespeed;
		
		if (opacity == 1)
		{
			with (instance_create_layer(x, y, "Instances", obj_skullScatter))
			{
				hspd = vecX * currentSpeed;
				vspd = vecY * currentSpeed;
				image_angle = other.instanceDirection;
			}
		}
		else
		{
			with (instance_create_layer(x, y, "Instances", obj_skullTrail))
			{
				hspd = vecX * currentSpeed;
				vspd = vecY * currentSpeed;
				image_angle = other.instanceDirection;
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