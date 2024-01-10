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
		
	case 3: // Level Up
		sprite_index = sItemLevel;
		break;	
}




// Add effects to player
if (distance_to_object(oPlayerBody) <= 8) {
	switch (currentItem) {
	case 0: // Wings
		oPlayerController.powerup[0] = true;
		oPlayerBody.jumpMax += 1;
		
		oGUI.drawItemTimer = room_speed*5;
		oGUI.drawItemName = "Wings";
		oGUI.drawItemDescription = "Allows you to Jump again in the air."
		oGUI.drawItemSprite = sItemWings;
		break;
		
	case 1: // Spear
		oPlayerController.powerup[1] = true;
		oPlayerController.spearDamageMultiplier = 1.5;
		oPlayerController.spearCooldown = 60;
		oPlayerController.spearFastCooldown = 30;
		oPlayerController.spearAlternateFire = true;
		
		oGUI.drawItemTimer = room_speed*5;
		oGUI.drawItemName = "Spear Upgrade";
		oGUI.drawItemDescription = 
		@"+50% Damage
		+20% Attack Speed
		Right Click to Fire spear as a strong projectile";
		oGUI.drawItemSprite = sItemSpear;
		break;
		
	case 2: // Stopwatch
		oPlayerController.powerup[2] = true;
		oPlayerController.staggerIntensity += 1;
		oPlayerController.staggerTimer += room_speed/4;
		
		oGUI.drawItemTimer = room_speed*5;
		oGUI.drawItemName = "Stopwatch";
		oGUI.drawItemDescription = 
		@"A Mysterious stopwatch, it's powers unknown...
		Slows down time by a higher factor and for longer.";
		oGUI.drawItemSprite = sItemStopwatch;
		break;	
		
	case 3: // Level Up
		oPlayerController.playerMoonlight += oPlayerController.playerMaxMoonlight;
		
		oGUI.drawItemTimer = room_speed*3;
		oGUI.drawItemName = "Level Up";
		oGUI.drawItemDescription = "+1 Level"
		oGUI.drawItemSprite = sItemLevel;
		break;
	}
	// Set Draw Alpha
	oGUI.drawItemAlpha = 1;
	instance_destroy();
}
