// Scale up spawning
if (size < 1) size += 0.1;
image_xscale = size;

// Defaults
image_blend = c_white;

// Gold HP
switch (ghp)
{
	case 0:
	gold = false;
	break;
	
	case 1:
	goldColor = c_red;
	break;
	
	case 2:
	goldColor = c_orange;
	break;
	
	case 3:
	goldColor = c_yellow;
	break;
}

// Gold State
if (gold)
{
	sprite_index = spr_playerHeart;
	image_blend = merge_colour(c_white, goldColor, random(1));
	effect_create_below(ef_flare, (bbox_left - (sprite_width / 2)) + random(2 * sprite_width), (bbox_top - (sprite_height / 2)) + random(2 * sprite_width), choose(0, 1), merge_colour(c_white, goldColor, random(1)));
	
}
// Invincibility
else if (invincibility) sprite_index = spr_playerInvincible;
// Heart state
else if (heart) sprite_index = spr_playerHeart;

else sprite_index = spr_player;