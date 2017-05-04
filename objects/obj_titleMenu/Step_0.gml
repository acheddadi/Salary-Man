/// @description Insert description here
// You can write your code in this editor

if (size < 1) size += 0.05;

switch (currentScreen)
{
	case 0:
	if (keyboard_check_pressed(vk_up)) menuChoice--;
	if (keyboard_check_pressed(vk_down)) menuChoice++;
	if(keyboard_check_pressed(vk_enter))
	{
		switch (menuChoice)
		{
			case 0:
			if (instance_exists(obj_currentScreen))
			{
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
			case 1:
			break;
			case 2:
			game_end();
			break;
		}
	}
	break;
	case 1:
	if (keyboard_check_pressed(vk_left)) menuChoice--;
	if (keyboard_check_pressed(vk_right)) menuChoice++;
	if (keyboard_check_pressed(vk_down)) menuRow++;
	if (keyboard_check_pressed(vk_up)) menuRow--;
	if(keyboard_check_pressed(vk_enter))
	{
		if (menuRow == 1)
		{
			if (instance_exists(obj_currentScreen))
				{
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
		else switch (menuChoice)
		{
			case 0:
			room_goto(rm_test);
			break;
			case 1:
			break;
			case 2:
			break;
		}
	}
	break;
	case 2:
	break;
}


