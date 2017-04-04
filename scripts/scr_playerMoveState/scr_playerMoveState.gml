// Keyboard input
if (keyboard_check_pressed(vk_space))
{
	audio_sound_pitch(snd_jump, random_range(0.8, 1.2));
	audio_play_sound(snd_jump, 0.5, false);
	if (!flip) flip = true;
	else flip = false;
}

// Terminal velocity
if ((vspd < TERM_VEL) && !flip) vspd += (obj_engine.gamespeed * GRAV);
if ((vspd > -TERM_VEL) && flip) vspd -= (obj_engine.gamespeed * GRAV);

// Floor check
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