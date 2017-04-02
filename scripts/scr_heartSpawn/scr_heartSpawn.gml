// Remove Gold state
if (instance_exists(obj_player))
{
	if (obj_player.gold == true)
	{
		obj_player.gold = false;
		audio_play_sound(snd_goldLose, 1, false);
	}
}

if (instance_exists(obj_player))
{
	if (deathCount < MAX_DEATH)
	{
		if (obj_player.heart == false)
		{
			with (instance_create_layer(room_width, room_height / 2, "Instances", obj_heart))
			{
				JUMP = 0;
				hspd = -10;
			}
		}
	}
	else
	{
		with (instance_create_layer(room_width, room_height / 2, "Instances", obj_heartGold))
		{
			JUMP = 0;
			hspd = -10;
		}
	}
	
}