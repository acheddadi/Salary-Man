// Initialize variables
initialPositionY = room_height + 300;
initialAmount = 10;

positionX = 50;
positionY = room_height - 100;
amount = initialAmount

wipePositionY = -100;
wipeAmount = 125;

positionRate = positionY / 125;
amountRate = wipeAmount / 125;

settle = false;
opacity = 0;
firespd = 0;
timeElapsed = 0;

//call the particle creation script
scr_fireWipe();

//set up the particle emitter
my_emitter = part_emitter_create(partsys_fire);

// Song switch
audio_sound_gain(obj_engine.currentSong, 0, 3000);
obj_engine.currentSong = snd_boss01;


