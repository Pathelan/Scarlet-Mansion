/// @description Increase Phase

if (phase < 3) {
	phase += 1;
	oGUI.winPhase += 1;
	instance_create_layer(x, y, "Instances", oHeal);
} else {
	instance_destroy(oEnemyPlaceholder);
	// Stop Movement
	oPlayerBody.canMove = false;
	oPlayerSpear.canAttack = false;
	oPlayerSpear.canFire = false;
	
	// Display Win Screen
	oGUI.winScreen = true;
}

alarm[1] = room_speed*45;
