/// @description Insert description here
// You can write your code in this editor

draw_set_halign(false);
draw_set_valign(true);
draw_set_font(fnt_menu);
draw_text_transformed(menuX, menuY, "Start", 1, size, 0);
draw_text_transformed(menuX, menuY + 24, "Options", 1, size, 0);
draw_text_transformed(menuX, menuY + 48, "Quit", 1, size, 0);


draw_set_halign(true);
draw_set_valign(true);
draw_set_font(fnt_credits);
draw_text_transformed(creditsX, creditsY, "© 2O17 Pyjama Games\nAll rights reserved", 1, size, 0);

draw_set_halign(true);
draw_set_valign(true);
draw_set_font(fnt_menu);
draw_text_transformed(stageBackX, stageBackY, "Back", 1, size, 0);

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