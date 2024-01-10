/// @description Heal Player


if (hspd != 0) {
	// Make hspd equal zero, regardless of positive or negative
	hspd -= sign(hspd)*0.025;	
}

if (healSpeed == 0) {
	apply_collisions(true, 0.075);
}

if (distance_to_object(oPlayerBody) < 96 && healPlayer == false && isGrounded) {
	healPlayer = true;
	hspd = 0;
}

if (distance_to_object(oPlayerBody) < 4) {
	// Make Sure player health doesn't overflow.
	oPlayerController.playerHealth = clamp(oPlayerController.playerHealth, oPlayerController.playerHealth + healAmount, oPlayerController.playerMaxHealth);
	var numbers = instance_create_layer(x, y, "UI", oHealthNumbers);
	numbers.healthNumber = healAmount;
	instance_destroy();	
}

// Move To Player
if (healPlayer == true) {
	
	// Add to speed
	healSpeed += 0.25;
	move_towards_point(oPlayerBody.x, oPlayerBody.y, -3+healSpeed);
}



