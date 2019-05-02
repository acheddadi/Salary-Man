/// @description Insert description here
// You can write your code in this editor

destroy = false;
size = 0;
timeElapsed = 0;

switch (irandom_range(0, 13))
{
	case 0:
	text = "Life is difficult";
	break;
	case 1:
	text = "Whoopsies";
	break;
	case 2:
	text = "M-m-monster kill !";
	break;
	case 3:
	text = "Shamone girl !\nHe-he !";
	break;
	case 4:
	text = "That's gotta hurt";
	break;
	case 5:
	text = "Hello darkness my old friend";
	break;
	case 6:
	text = "Better luck next time";
	break;
	case 7:
	text = "???";
	break;
	case 8:
	text = "I'm really feeling it !";
	break;
	case 9:
	text = "Just beat it!";
	break;
	case 10:
	text = "Killtacular !";
	break;
	case 11:
	text = "When life gives you lemons ...";
	break;
	case 12:
	text = "Permit denied"
	break;
	case 13:
	text = "I am the one who knocks"
	break;
}

obj_engine.deathCount++;
obj_engine.totalDeathCount++;