// Initialize variables
initialPositionY = room_height + 100;
initialAmount = 10;

positionX = 0;
positionY = room_height - 100;
amount = initialAmount

wipePositionY = -100;
wipeAmount = 125;

positionRate = positionY / 125;
amountRate = wipeAmount / 125;

settle = false;
opacity = 0;
timeElapsed = 0;

//call the particle creation script
scr_fireWipe();

//set up the particle emitter
my_emitter = part_emitter_create(global.partsys_fire);


