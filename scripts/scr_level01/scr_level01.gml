/// Level 01 state
switch (timeSeconds)
{
//===============================================================
// Boss chase
	case 0.1:
	with (instance_create_layer(0, 0, "BossBackground", obj_runningMan)) stopTime = 30;
	break;
//===============================================================
// Phase 1
//===============================================================
	case 0.5:
	scr_heartSpawn();
	break;
//================================================================
// Crowd of people
	case 2.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
	break;
	
	case 3:
	with (instance_create_layer(0, 0, "Enemies", obj_crowdSpawn)) spawnCount = 35;
	break;
//================================================================
// Incoming birds
	case 4.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;

	case 5:
	with (instance_create_layer(0, 0, "Enemies", obj_birdSpawn)) spawnCount = 35;
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
	with (instance_create_layer(0, 0, "Enemies", obj_birdSpawn)) spawnCount = 25;
	break;

	case 29:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
//===============================================================
// Checkpoint
	case 30:
	scr_checkpoint();
	break;
//================================================================
// Heart spawn
	case 30.5:
	scr_heartSpawn();
	break;
//===============================================================
// Phase 2
//===============================================================
	case 31:
	speedUp = true;
	with (instance_create_layer(0, 0, "BossForeground", obj_runningMan)) stopTime = 30;
	break;
//===============================================================
// Black Bruce Lee Rapid Fire	
	case 34.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 35.5:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;
	
	case 36.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 37:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;
	
	case 37.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
//===============================================================
	case 38.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "down";
	break;
	
	case 39:
	instance_create_layer(0, 0, "Enemies", obj_crowdSpawn)
	break;
	
	case 39.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 40:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 41:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "up";
	break;
	
	case 41.5:
	instance_create_layer(0, 0, "Enemies", obj_birdSpawn)
	break;
	
	case 42:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 42.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 43.5:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "both";
	break;
	
	case 44:
	with (instance_create_layer(0, 0, "Enemies", obj_birdSpawn)) spawnCount = 30;
	with (instance_create_layer(0, 0, "Enemies", obj_crowdSpawn)) spawnCount = 30;
	break;
	
//===============================================================
// Black Bruce Lee Rapid Fire	
	case 46:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;
	
	case 47:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 48:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;
	
	case 48.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 49:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 50:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;
	
	//================================================================
// BBLee
	case 51:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
	
	case 51.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	break;
//================================================================
// Incoming birds and crowd
	case 52.5:
	instance_create_layer(0, 0, "Enemies", obj_kickSpawn);
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "both";
	break;

	case 53:
	with (instance_create_layer(0, 0, "Enemies", obj_crowdSpawn)) spawnCount = 25;
	with (instance_create_layer(0, 0, "Enemies", obj_birdSpawn)) spawnCount = 25;
	break;

//================================================================
// Explosions

	case 55:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;
	
	case 56:
	with (instance_create_layer(0, 0, "Text", obj_drawScreenText)) spriteIndex = "both";
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;

	case 57:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	with (instance_create_layer(0, 0, "Enemies", obj_crowdSpawn)) spawnCount = 25;
	with (instance_create_layer(0, 0, "Enemies", obj_birdSpawn)) spawnCount = 25;
	break;
	
	case 58:
	with (instance_create_layer(0, 0, "Enemies", obj_kickSpawn)) explode = true;
	break;

//===============================================================
// Phase 3
//===============================================================
	case 61:
	with (instance_create_layer(0, 0, "BossFloor", obj_runningMan)) stopTime = 20;
	break;
	
	case 64:
	instance_create_layer(0, 0, "Enemies", obj_runningManLaser);
	break;	
	
	case 69.5:
	if (instance_exists(obj_runningMan)) instance_destroy(obj_runningMan);
	break;
	
	case 72.5:
	scr_checkpoint();
	break;
//================================================================
// Heart spawn
	case 73:
	scr_heartSpawn();
	break;
//================================================================
// Speed up
	case 73.5:
	speedUp = true;
	break;
	
	case 75:
	with (instance_create_layer(0, 0, "Enemies", obj_fireBallSpawn)) alarm[0] = 15 * 60;
	break;

	case 90:
	with (instance_create_layer(0, 0, "Enemies", obj_fireWallSpawn)) alarm[0] = 15 * 60;
	break;
	
	case 105:
	with (instance_create_layer(0, 0, "Enemies", obj_fireBallSpawn))
	{
		alarm[0] = 10 * 60;
		frequency = 60;
	}
	break;
	
	case 105.5:
	with (instance_create_layer(0, 0, "Enemies", obj_fireWallSpawn))
	{
		alarm[0] = 9.5 * 60;
		frequency = 60;
	}
	break;
	
	case 116:
	scr_checkpoint();
	break;
	
	case 117:
	instance_create_layer(0, 0, "Text", obj_endGame);
	break;
	
}