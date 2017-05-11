/// @description Insert description here
// You can write your code in this editor

// Initialize variables
hspd = 0;
vspd = 0;
index = 0;
currentX = room_width; currentY = 0;
wipe = true;
timeElapsed = 0;

// Constants
MOV_SPEED = 3;
scale = 1;

// Individual sprite coordinates
for (var i = 0; i < room_width; i++) positionX[i] = sprite_width * i;
for (var i = 0; i < room_height; i++) positionY[i] = sprite_height * i;

// Spacing
var nw = (sprite_width / 2) * scale, nh = (sprite_height / 2) * scale;

// Surface for new sprite creation
for (var i = 0; i < image_number; i++) wipeSurface[i] = surface_create(room_width, room_height);

// Draw onto surface
for (var h = 0; h < image_number; h++)
{
	surface_set_target(wipeSurface[h]);
	for (var i = 0; i < room_width; i++)
	{
		for (var j = 0; j < room_height; j++)
		{
			draw_sprite_ext(sprite_index, h, positionX[i], positionY[j], scale, scale, 0, c_white, 0.9);
			draw_sprite_ext(sprite_index, h, positionX[i] + nw, positionY[j], scale, scale, 0, c_white, 0.9);
			draw_sprite_ext(sprite_index, h, positionX[i], positionY[j] + nh, scale, scale, 0, c_white, 0.9);
			draw_sprite_ext(sprite_index, h, positionX[i] + nw, positionY[j] + nh, scale, scale, 0, c_red, 0.5);
		}
	}
	surface_reset_target();
}

// Create sprite
spr_wipe = sprite_create_from_surface(wipeSurface[0], 0, 0, room_width, room_height, true, false, 0, 0);
for (var i = 1; i < image_number; i++) sprite_add_from_surface(spr_wipe, wipeSurface[i], 0, 0, room_width, room_height, true, false);