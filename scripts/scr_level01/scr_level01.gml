/// Level 01 state
switch (timeSeconds)
{
	// Crowd of people
		case 2:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_crowd;
		break;
	}
		case 3:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
	//================================================================
	// Incoming birds
		case 5:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_birds;
		break;
	}
		case 6:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
	//================================================================
	// Crowd of people
		case 7:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_crowd;
		break;
	}
		case 8:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
	// Black Bruce Lee
	//================================================================
		case 11:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
		case 12:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
		case 13:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
		case 14:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
		case 15:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
	//================================================================
}