/// Level 01 state
switch (timeSeconds)
{
//================================================================
// Crowd of people
	case 2:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_down;
		break;
	}
	case 3:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
//================================================================
// Incoming birds
	case 4:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_up;
		break;
	}
	case 5:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
//================================================================
// Crowd of people
	case 6:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_down;
		break;
	}
	case 7:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
//================================================================
// Incoming birds
	case 8:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_up;
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
	case 12:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_down; // Crowd of people
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
	case 14:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_up; // Incoming birds
		break;
	}
//================================================================
// Incoming birds continue
	case 15:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
	case 16:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_down; // Crowd of people
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
	case 18:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_up;
		break;
	}
	case 19:
	{
		instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
		break;
	}
//================================================================
// Crowd of people
	case 20:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_down;
		break;
	}
	case 21:
	{
		instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
		break;
	}
//================================================================
// Incoming birds
	case 22:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_up;
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
	case 26:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
//================================================================
// Crowd of people
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_down; 
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
	case 28:
	{
		with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = spr_up;
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
	case 31:
	{
		instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
		break;
	}
//================================================================
}