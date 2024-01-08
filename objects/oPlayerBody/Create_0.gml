/// @description Initialise Vairables

// Create Spear
playerSpear = instance_create_layer(x, y, "Instances", oPlayerSpear);

// Movement Variables
playerDirection = 1;
movespeed = 2;
acceleration = .5;
jumpspeed = 7;
jumpMax = 2;
jumpLeft = jumpMax;
jumpMultiplier = 2.15;
vspd = 0;
hspd = 0;
isGrounded = false;

// Gameplay Variables
slowTimer = 120;
slowIntensity = 2;
