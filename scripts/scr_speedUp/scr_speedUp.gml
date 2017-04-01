// speedUp script

layer_hspeed("Floor", gamespeed * -8);
layer_hspeed("Foreground", gamespeed * -0.2);
layer_hspeed("Background", gamespeed * -0.1);

if (speedUp)
{
	instance_create_layer(0, 0, "Effects", obj_speedUpSpawn);
	gamespeed++;
	speedUp = false;
}