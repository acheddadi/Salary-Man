/// @description Insert description here
// You can write your code in this editor

draw_set_halign(false);
draw_set_valign(true);
draw_set_font(fnt_menu);
draw_text_transformed(menuX, menuY, "Start", 1, size, 0);
draw_text_transformed(menuX, menuY + 24, "Options", 1, size, 0);
draw_text_transformed(menuX, menuY + 48, "Quit", 1, size, 0);
draw_text_transformed(stageBackX, stageBackY, "Back", 1, size, 0);


draw_set_halign(true);
draw_set_valign(true);
draw_set_font(fnt_credits);
draw_text_transformed(creditsX, creditsY, "© 2O17 Pyjama Games\nAll rights reserved", 1, size, 0);


switch (currentScreen)
{
	case 0:
	switch (menuChoice)
	{
		case 0:
		draw_sprite(spr_arrow, 0, menuX - 16, menuY);
		break;
		case 1:
		draw_sprite(spr_arrow, 0, menuX - 16, menuY + 24);
		break;
		case 2:
		draw_sprite(spr_arrow, 0, menuX - 16, menuY + 48);
		break;
		default:
		if (menuChoice > 2) menuChoice = 0;
		else menuChoice = 2;
		break;
	}
	break;
	case 1:
	switch (menuRow)
	{
		case 0: case 1:
		break;
		default:
		if (menuRow > 1) menuRow = 0;
		else menuRow = 1;
	}
	if (menuRow == 1)
	{
		draw_sprite(spr_arrow, 0, stageBackX - 16, stageBackY);
	}
	else switch (menuChoice)
	{
		case 0:
		draw_sprite(spr_downArrow, 0, stage1X, (room_height / 2) - (obj_stages.sprite_height / 2) - 16);
		break;
		case 1:
		draw_sprite(spr_downArrow, 0, stage2X, (room_height / 2) - (obj_stages.sprite_height / 2) - 16);
		break;
		case 2:
		draw_sprite(spr_downArrow, 0, stage3X, (room_height / 2) - (obj_stages.sprite_height / 2) - 16);
		break;
		default:
		if (menuChoice > 2) menuChoice = 0;
		else menuChoice = 2;
		break;
	}
	break;
	case 2:
	break;
}