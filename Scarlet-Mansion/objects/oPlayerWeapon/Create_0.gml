/// @description Initialise

image_speed = 0;

attackCooldown = oPlayerController.spearCooldown;
fireCooldown = 0;

drawSpear = true;
canAttack = true;
canFire = true;

_len = sprite_width - (oPlayerController.spearRadius/2) - 8;

// Collision Variables
hitObjects = ds_list_create();