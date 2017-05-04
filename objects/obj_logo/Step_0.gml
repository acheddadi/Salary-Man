/// @description Insert description here
// You can write your code in this editor

if (image_index < (sprite_get_number(sprite_index) - 1)) image_speed = 1;
else
{
	image_speed = 0;
	if (!menu)
	{
		instance_create_layer(0, 0, "Menu", obj_titleMenu);
		menu = true;
	}
}