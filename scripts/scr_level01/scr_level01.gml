/// Level 01 state
switch (timeSeconds)
{
		case 1:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_crowd;
		break;
	}
		case 2:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
	
		case 4:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_birds;
		break;
	}
		case 5:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
		case 6:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_crowd;
		break;
	}
		case 7:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
}