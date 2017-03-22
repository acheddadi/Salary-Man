// Keyboard input
if (keyboard_check_pressed(vk_space))
{
	if (!flip) flip = true;
	else flip = false;
}

// Background and foreground Hspd
if (hspd < 0.2)
{
	layer_hspeed("Foreground", 0);
	layer_hspeed("Background", 0);
}
else
{
	layer_hspeed("Foreground", hspd - 0.2);
	layer_hspeed("Background", hspd - 0.1);
}

// Damage
if (damage)
{/*
	hspd = -15;
	vspd = -25;
	move = false;
	damage = false;
	hp--;
*/
game_restart();
}

// Terminal velocity
if ((vspd < TERM_VEL) && !flip) vspd += GRAV;
if ((vspd > -TERM_VEL) && flip) vspd -=GRAV;

// Motion
if (move && (hspd < MOVE_SPD)) hspd += 0.2;
else if (!move && (hspd > 0)) hspd -= 0.2;
else if (hspd < 0) hspd += 0.2;

// End of stage
if ((x + hspd) > (room_width - 0.75 * camera_get_view_width(view_camera[0]))) move = false;

// Collision check
if (place_meeting(x + hspd, y, obj_collision))
{
	while (!place_meeting(x + sign(hspd), y, obj_collision))
	{
		x += sign(hspd);
	}
	hspd = 0;
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

// Enemy Collision check
if (place_meeting(x + hspd, y, obj_enemy))
{
	while (!place_meeting(x + sign(hspd), y, obj_enemy))
	{
		x += sign(hspd);
	}
	damage = true;
}
if (place_meeting(x, y + vspd, obj_enemy))
{
	while (!place_meeting(x, y + sign(vspd), obj_enemy))
	{
		y += sign(vspd);
	}
	damage = true;
}

// Image flip
if (y < HALF_HEIGHT) image_yscale = -1;
else image_yscale = 1;

// Wrap around
move_wrap(true, false, 0);
