// Initialize variables
initialPositionY = room_height + 100;
initialAmount = 10;

positionY = initialPositionY
amount = initialAmount

wipePositionY = -100;
wipeAmount = 125;

positionRate = positionY / 100;
amountRate = wipeAmount / 100;

settle = false;
opacity = 0;
timeElapsed = 0;

//call the particle creation script
scr_fireWipe();

//set up the particle emitter
my_emitter = part_emitter_create(global.partsys_fire);


