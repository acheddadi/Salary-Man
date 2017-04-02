/// @description Insert description here
// You can write your code in this editor

currentLayer = layer_get_name(layer);

switch (currentLayer)
{
	case "BossFloor":
	size = 5;
	y += room_height / 4;
	break;
	
	case "BossForeground":
	size = 4;
	image_blend = merge_color(c_white, c_black, 0.50);
	y += room_height / 6;
	break;
	
	case "BossBackground":
	size = 3;
	image_blend = merge_color(c_white, c_black, 0.75);
	break;
	
	default:
	instance_destroy();
	break;
}
stopTime = 0;

image_xscale = size;
image_yscale = image_xscale;

x += -(sprite_width / 2);
y += room_height / 2;