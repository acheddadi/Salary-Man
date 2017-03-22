// Keyboard input
if (keyboard_check_pressed(vk_space))
{
	if (!flip) flip = true;
	else flip = false;
}

// Terminal velocity
if ((vspd < TERM_VEL) && !flip) vspd += GRAV;
if ((vspd > -TERM_VEL) && flip) vspd -=GRAV;

// Move right
hspd = MOVE_SPD;

// Collision check
if (place_meeting(x + hspd, y, obj_collision))
{
	while (!place_meeting(x + sign(hspd), y, obj_collision))
	{
		x += sign(hspd);
	}
	hspd = 0;
	damage = true;
}
x += hspd;
if (place_meeting(x, y + vspd, obj_collision))
{
	while (!place_meeting(x, y + sign(vspd), obj_collision))
	{
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd;

// Image flip
if (y < HALF_HEIGHT) image_yscale = -1;
else image_yscale = 1;

// Wrap around
move_wrap(true, false, -512);
