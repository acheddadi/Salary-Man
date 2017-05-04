/// @description Insert description here
// You can write your code in this editor

menuX = room_width * 63/128;
menuY = room_height * 2/3;

menuChoice = 0;

creditsX = room_width / 2;
creditsY = room_height * 11/12;
size = 0;

stageBackX = room_width * 5/6;
stageBackY = room_height * 10/12;

var numOfStages = 3;
var padding = room_width / (7 * numOfStages);

stage1X = (room_width * 2/3) + (3/2 * padding);
stage2X = stage1X + (2 * padding);
stage3X = stage2X + (2 * padding);

with (instance_create_layer(stage1X, room_height / 2, "Images", obj_stages))
{
	sprite_index = spr_stage1;
	image_xscale = 3;
	image_yscale = image_xscale;
}
with (instance_create_layer(stage2X, room_height / 2, "Images", obj_stages))
{
	sprite_index = spr_unknown;
	image_xscale = 3;
	image_yscale = image_xscale;
}
with (instance_create_layer(stage3X, room_height / 2, "Images", obj_stages))
{
	sprite_index = spr_unknown;
	image_xscale = 3;
	image_yscale = image_xscale;
}