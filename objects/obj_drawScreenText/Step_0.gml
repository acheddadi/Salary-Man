/// @description Insert description here
// You can write your code in this editor

if (timeElapsed == delay)
{
	if (draw) draw = false;
	else
	{
		draw = true;
		drawCount++;
		if (drawCount <= MAX_DRAW) audio_play_sound(snd_alert, 0.5, false);
	}
	timeElapsed = 0;
}
timeElapsed++;

if (drawCount > MAX_DRAW) instance_destroy();
