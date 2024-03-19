/// @description Insert description here
// You can write your code in this editor

apply_collisions(usesGravity, gravityScale);

#region Stagger

// Start Stagger
if (enemyCurrentStagger >= enemyMaxStagger) {
	if (!isStaggered) { // Slow Time and Zoom Camera
		isStaggered = true;
		isStunned = true; // Stun Enemy
		
		
		start_slow(oPlayerController.staggerTimer, oPlayerController.staggerIntensity);
		oCamera.alarm[0] = oPlayerController.staggerTimer; // Set Camera Reset Timer
		enemyDamageMultiplier = enemyStaggeredDamageMultiplier;
		alarm[0] = oPlayerController.staggerTimer;
		
		
		// Reset GUI Timer, making sure the id doesn't refresh mid-stagger
		oPlayerController.alarm[0] = room_speed*5 + oPlayerController.staggerTimer;
		
	}
}	

// Stagger Decay
if (enemyCurrentStagger > 0 && isStaggered == false) {
	if (enemyStaggerDecayTimer > 0) {
		enemyStaggerDecayTimer --;	
	} else {
		enemyCurrentStagger = enemyCurrentStagger - floor(enemyMaxStagger/50);
		enemyStaggerDecayTimer = (room_speed/5)/global.TIMESCALE;
		
		
	}
}

if (enemyCurrentStagger > 0 && oPlayerController.spearLastObjectHit.id != noone) {
	// Send Variables over to GUI
	if (oPlayerController.spearLastObjectHit.id == id) {
		oGUI.drawEnemyStaggerID = id;
		oGUI.drawEnemyCurrentStagger = enemyCurrentStagger;
		oGUI.drawEnemyMaxStagger = enemyMaxStagger;
		oGUI.drawEnemyName = enemyName;
		oGUI.drawEnemyStaggerAlpha = 1;
		if (oGUI.drawEnemyStaggerTimer <= 0) {
			oGUI.drawEnemyStaggerTimer = room_speed*5;
		}
	}	
}

// Clamp Variables
enemyCurrentStagger = clamp(enemyCurrentStagger, 0, enemyCurrentStagger + 1);

#endregion



// Inherit the parent event
event_inherited();

if (currentObjectHealth <= 0) {
	repeat (irandom_range(3, 5)) {
		var moonlight = choose(instance_create_layer(x, y, "Instances", oMoonlightSmall), instance_create_layer(x, y, "Instances", oMoonlightMedium));
	}
	
	instance_destroy();	
}