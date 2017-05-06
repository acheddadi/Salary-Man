// speedUp script

layer_hspeed("Floor", gamespeed * -12);
layer_hspeed("Foreground", gamespeed * -0.5);
layer_hspeed("Background", gamespeed * -0.25);

if (speedUp)
{
	instance_create_layer(0, 0, "Effects", obj_speedUpSpawn);
	gamespeed++;
	speedUp = false;
}