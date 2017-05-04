/// @description Insert description here
// You can write your code in this editor

// Title screen logo
instance_create_layer(0, 0, "Images", obj_logo);

// Camera positions
PositionX[0] = room_width / 2;
PositionX[1] = room_width * 5/6;
PositionX[2] = room_width * 1/6;

PositionY[0] = room_height / 2;
PositionY[1] = room_height / 2;
PositionY[2] = room_height / 2;

// Player choice
goToX = PositionX[0];
goToY = PositionY[0];

// Initial positon
x = PositionX[0];
y = PositionY[0]; 

// Camera panning speed
transitionSpeed = 32