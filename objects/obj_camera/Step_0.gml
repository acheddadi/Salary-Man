/// @description Insert description here
// You can write your code in this editor

// Camera Position
x = obj_player.x + (camera_get_view_width(view_camera[0]) / 4);
y = obj_player.y;

// Wrap around
move_wrap(true, false, camera_get_view_width(view_camera[0]) / 4);