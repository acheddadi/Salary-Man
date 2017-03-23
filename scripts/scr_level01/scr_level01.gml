/// Level 01 state
switch (timeSeconds)
{
	case 2:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_birds;
		break;
	}
		case 4:
	{
		with (instance_create_layer(0, 0, "Enemies", obj_birdSpawn))
		{
			spawnCount = 50;
		}
		break;
	}
}