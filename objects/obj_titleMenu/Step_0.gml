/// @description Insert description here
// You can write your code in this editor

if (size < 1) size += 0.05;

if (keyboard_check_pressed(vk_up)) menuChoice--;
if (keyboard_check_pressed(vk_down)) menuChoice++;

if(keyboard_check_pressed(vk_enter))
{
	switch (menuChoice)
	{
		case 0:
		if (instance_exists(obj_currentScreen))
		{
			with (obj_currentScreen)
			{
				goToX = PositionX[1];
				goToY = PositionY[1];
			}
		}
		break;
		case 1:
				if (instance_exists(obj_currentScreen))
		{
			with (obj_currentScreen)
			{
				goToX = PositionX[2];
				goToY = PositionY[2];
			}
		}
		break;
		case 2:
		game_end();
		break;
	}
}