// Start wipe
if (!settle)
{
	if (opacity < 1) opacity += 0.01;
	if (positionY > wipePositionY) positionY -= positionRate;
	if (amount < wipeAmount) amount += amountRate;
	else settle = true;
}

// Settle wipe
else
{
	if (timeElapsed > 120)
	{
		if (opacity > 0) opacity -= 0.01;
		if (positionY < initialPositionY) positionY += positionRate;
		if (amount > initialAmount) amount -= amountRate;	
	}
	timeElapsed++;
}

// Update particle
part_emitter_region(global.partsys_fire, my_emitter, -50, room_width + 50, positionY, room_height + 50, ps_shape_rectangle, ps_distr_linear);

//start the particle streams
part_emitter_burst(global.partsys_fire,my_emitter,global.part_fire,amount);
part_emitter_burst(global.partsys_fire,my_emitter,global.part_cinder,-5);

