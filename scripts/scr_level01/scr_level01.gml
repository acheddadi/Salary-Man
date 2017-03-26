/// Level 01 state
switch (timeSeconds)
{
//================================================================
// Crowd of people
	case 2.5:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
		break;
	}
	case 3:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
//================================================================
// Incoming birds
	case 4.5:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
		break;
	}
	case 5:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
//================================================================
// Crowd of people
	case 6.5:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
		break;
	}
	case 7:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
//================================================================
// Incoming birds
	case 8.5:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
		break;
	}
	case 9:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
//================================================================
// Black Bruce Lee
	case 10:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
	case 11:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
	case 12.5:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down"; // Crowd of people
		break;
	}
//================================================================
// Crowd of people continue
	case 13:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
//================================================================
// Black Bruce Lee
	case 14.5:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up"; // Incoming birds
		break;
	}
//================================================================
// Incoming birds continue
	case 15:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
	case 16.5:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down"; // Crowd of people
		break;
	}
//================================================================
	// Crowd of people continue
	case 17:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
//================================================================
// Incoming birds
	case 18.5:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
		break;
	}
	case 19:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
//================================================================
// Crowd of people
	case 20.5:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
		break;
	}
	case 21:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
//================================================================
// Incoming birds
	case 22.5:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
		break;
	}
	case 23:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
//================================================================
// Black Bruce Lee
	case 24:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
	case 25:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
	case 25.5:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
		break;
	}
	case 26:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
//================================================================
// Crowd of people
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
//================================================================
// Black Bruce Lee
	case 27:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn); // Crowd
		break;
	}
//================================================================
// Incoming birds
	case 28.5:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	}
	case 29:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
	case 30:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
//================================================================
}