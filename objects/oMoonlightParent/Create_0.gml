/// @description Initialise

vspd = random_range(-2.5, -4);
hspd = random_range(-2.5, 2.5);
isGrounded = false;

moonlightSpeed = 0;
moonlightTrackPlayer = false;
moonlightAmount = 10;

moonlightLifetime = room_speed*random_range(8, 10);
moonlightGraceTime = room_speed*.75;


