/// @description Create timer
// You can write your code in this editor

obj_timeLine.gameover = false;
obj_timeLine.timeElapsed = obj_timeLine.checkpoint;

instance_create_layer(224, 416, "Instances", obj_player);
instance_create_layer(0, 0, "Text", obj_drawTimer);