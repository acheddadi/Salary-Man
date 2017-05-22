// Horizontal wipe
if (positionX < room_width)
{
	positionX += firespd;
	firespd += 0.1;
}
else
{
	// Start wipe
	if (!settle)
	{
		if (opacity < 1) opacity += 0.01;
		if (positionY > wipePositionY) positionY -= positionRate;
		if (amount < wipeAmount) amount += amountRate;
		else
		{
			audio_play_sound(obj_engine.currentSong, 0, true);
			settle = true;
			
			var sky_id = layer_get_id("Sky");
			var bg_id = layer_get_id("Background");
			var fg_id = layer_get_id("Foreground");
			var flr_id = layer_get_id("Floor");
			
			var sky = layer_background_get_id(sky_id);
			var bg = layer_background_get_id(bg_id);
			var fg = layer_background_get_id(fg_id);
			var flr = layer_background_get_id(flr_id);
			
			layer_background_change(sky, spr_skyFire);
			layer_background_change(bg, spr_bgFire);
			layer_background_change(fg, spr_fgFire);
			layer_background_change(flr, spr_floorFire);
		}
	}

	// Settle wipe
	else
	{
		if (timeElapsed > 10)
		{
			if (opacity > 0) opacity -= 0.01;
			if (positionY < initialPositionY) positionY += positionRate;
			if (amount > initialAmount) amount -= amountRate;	
		}
		timeElapsed++;
	}
}

// Update particle
part_emitter_region(partsys_fire, my_emitter, -50, positionX + 50, positionY, room_height + 50, ps_shape_rectangle, ps_distr_linear);

//start the particle streams
part_emitter_burst(partsys_fire,my_emitter,part_fire,amount);
part_emitter_burst(partsys_fire,my_emitter,part_cinder,-5);

