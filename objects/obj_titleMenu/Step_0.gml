/// @description Insert description here
// You can write your code in this editor

// Fade in text
if (size < 1) size += 0.05;

// Menu movement sound
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)) audio_play_sound(snd_move, 1, false);
if ((keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) && ((currentScreen == 1) && (menuRow == 0))) audio_play_sound(snd_move, 1, false);

// Manage inputs depending on current screen
switch (currentScreen)
{
	// Title screen
	case 0:
	if (keyboard_check_pressed(vk_up)) menuChoice--;
	if (keyboard_check_pressed(vk_down)) menuChoice++;
	if(keyboard_check_pressed(vk_enter))
	{
		switch (menuChoice)
		{
			// Start button
			case 0:
			if (instance_exists(obj_currentScreen))
			{
				audio_play_sound(snd_select, 1, false);
				currentScreen = 1;
				menuChoice = 0;
				menuRow = 0;
				with (obj_currentScreen)
				{
					goToX = PositionX[1];
					goToY = PositionY[1];
				}
			}
			break;
			
			// Quit button
			case 1:
			game_end();
			break;
		}
	}
	break;
	
	// Stage select screen
	case 1:
	if (keyboard_check_pressed(vk_left)) menuChoice--;
	if (keyboard_check_pressed(vk_right)) menuChoice++;
	if (keyboard_check_pressed(vk_down)) menuRow++;
	if (keyboard_check_pressed(vk_up)) menuRow--;
	if(keyboard_check_pressed(vk_enter))
	{
		// Back button
		if (menuRow == 1)
		{
			if (instance_exists(obj_currentScreen))
				{
					audio_play_sound(snd_cancel, 1, false);
					currentScreen = 0;
					menuChoice = 0;
					menuRow = 0;
					with (obj_currentScreen)
					{
						goToX = PositionX[0];
						goToY = PositionY[0];
					}
				}
		}
		
		// Stage thumbnails
		else switch (menuChoice)
		{
			case 0:
			if (instance_exists(obj_currentScreen))
			{
				audio_play_sound(snd_select, 1, false);
				currentScreen = -1;
				menuChoice = 0;
				menuRow = 0;
				with (obj_currentScreen)
				{
					goToY *= 2;
					nextStage = 1;
				}
				audio_sound_gain(snd_title, 0, 200);
			}
			break;
			case 1:
			break;
			case 2:
			break;
		}
	}
	break;
	
	// Options screen
	case 2:
	break;
}