/// @description Set Sprite and enable items

// Set Sprites
switch (currentItem) {
		case 0: // Wings
		sprite_index = sItemWings;
		break;
		
	case 1: // Spear
		sprite_index = sItemSpear;
		break;
		
	case 2: // Stopwatch
		sprite_index = sItemStopwatch;
		break;	
}




// Add effects to player
if (distance_to_object(oPlayerBody) <= 8) {
	switch (currentItem) {
	case 0: // Wings
		oPlayerController.powerup[0] = true;
		oPlayerBody.jumpMax += 1;
		break;
		
	case 1: // Spear
		oPlayerController.powerup[1] = true;
		oPlayerController.spearDamageMultiplier = 1.5;
		oPlayerController.spearCooldown = 60;
		oPlayerController.spearFastCooldown = 30;
		oPlayerController.spearAlternateFire = true;
		break;
		
	case 2: // Stopwatch
		oPlayerController.powerup[2] = true;
		oPlayerController.staggerIntensity += 1;
		oPlayerController.staggerTimer += room_speed/4;
		break;	
	}
	
	instance_destroy();
}
