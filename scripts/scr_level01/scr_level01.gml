/// Level 01 state
switch (timeSeconds)
{
//===============================================================
// Phase 1
//===============================================================
	case 0.5:
	with (instance_create_layer(room_width, room_height / 2, "Instances", obj_heart))
	{
		JUMP = 0;
		hspd = -10;
	}
	break;
//================================================================
// Crowd of people
	case 2.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
	break;
	
	case 3:
	instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
	break;
//================================================================
// Incoming birds
	case 4.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;

	case 5:
	instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
	break;
//================================================================
// Crowd of people
	case 6.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
	break;

	case 7:
	instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
	break;
//================================================================
// Incoming birds
	case 8.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;

	case 9:
	instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
	break;
//================================================================
// Black Bruce Lee
	case 10:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;

	case 11:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;

	case 11.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down"; // Crowd of people
	break;
//================================================================
// Crowd of people continue
	case 12:
	instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
	break;
//================================================================
// Black Bruce Lee
	case 13.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up"; // Incoming birds
	break;
//================================================================
// Incoming birds continue
	case 14:
	instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
	break;

	case 15.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down"; // Crowd of people
	break;
//================================================================
	// Crowd of people continue
	case 16:
	instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
	break;
//================================================================
// Incoming birds
	case 17.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;

	case 18:
	instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
	break;
//================================================================
// Crowd of people
	case 19.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
	break;

	case 20:
	instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
	break;
//================================================================
// Incoming birds
	case 21.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;

	case 22:
	instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
	break;
//================================================================
// Black Bruce Lee
	case 23:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;

	case 24:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;

	case 24.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
	break;

	case 25:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
//================================================================
// Crowd of people
	instance_create_layer(0, 0, "Enemies", obj_crowdSpawn);
	break;
//================================================================
// Black Bruce Lee
	case 26:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	instance_create_layer(0, 0, "Enemies", obj_crowdSpawn); // Crowd
	break;
//================================================================
// Incoming birds
	case 27.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;

	case 28:
	instance_create_layer(0, 0, "Enemies", obj_birdSpawn);
	break;

	case 28.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
//================================================================
// Heart spawn
	case 29.5:
	if (instance_exists(obj_player))
	{
		if ((obj_player.heart == false) && (!instance_exists(obj_heart)))
		{
			with (instance_create_layer(room_width, room_height / 2, "Instances", obj_heart))
			{
				JUMP = 0;
				hspd = -10;
			}
		}
	}
	break;
//===============================================================
// Phase 2
//===============================================================
	case 30:
	speedUp = true;
	break;
//===============================================================
// Black Bruce Lee Rapid Fire	
	case 33.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 34.5:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;
	
	case 35.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 36:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;
	
	case 36.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
//===============================================================
	case 37.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
	break;
	
	case 38:
	instance_create_layer(0, 0, "Enemies", obj_crowdSpawn)
	break;
	
	case 38.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 39:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 40:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;
	
	case 40.5:
	instance_create_layer(0, 0, "Enemies", obj_birdSpawn)
	break;
	
	case 41:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 41.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 42.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "both";
	break;
	
	case 43:
	with (instance_create_layer(0, 0, "Enemies", obj_birdSpawn)) spawnCount = 25;
	with (instance_create_layer(0, 0, "Enemies", obj_crowdSpawn)) spawnCount = 25;
	break;
	
//===============================================================
// Black Bruce Lee Rapid Fire	
	case 45:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;
	
	case 46:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 47:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;
	
	case 47.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Enemies", obj_birdSpawn)) spawnCount = 25;
	break;
	
	case 48:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 49:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;
	
	//================================================================
// Crowd of people
	case 50:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
	break;
	
	case 50.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Enemies", obj_crowdSpawn)) spawnCount = 25;
	break;
//================================================================
// Incoming birds
	case 51.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;

	case 52:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Enemies", obj_birdSpawn)) spawnCount = 25;
	break;
//================================================================
// Crowd of people
	case 53.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
	break;

	case 54:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Enemies", obj_crowdSpawn)) spawnCount = 25;
	break;
//================================================================
// Incoming birds
	case 55.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;

	case 56:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Enemies", obj_birdSpawn)) spawnCount = 25;
	break;
//================================================================
// Black Bruce Lee
	case 57:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;

	case 57.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;

//================================================================
// Heart spawn
	case 59.5:
	if (instance_exists(obj_player))
	{
		if ((obj_player.heart == false) && (!instance_exists(obj_heart)))
		{
			with (instance_create_layer(room_width, room_height / 2, "Instances", obj_heart))
			{
				JUMP = 0;
				hspd = -10;
			}
		}
	}
	break;
//===============================================================
// Phase 3
//===============================================================
	case 60:
	speedUp = true;
	break;
//===============================================================
	
}