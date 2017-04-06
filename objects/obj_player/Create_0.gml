// Initializing variables
vspd = 0;

// Initializing constants
INV_DELAY = 90;
TERM_VEL = 10;
GRAV = 4;
HALF_HEIGHT = room_height / 2;

// Gravity flip
flip = false;

// Collision
ghp = 0;
gold = false;
invincibility = false;
heart = false;

// Player state
state = scr_playerMoveState;

// Animations
animation = scr_playerAnimation;