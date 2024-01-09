/// @description Insert description here
// You can write your code in this editor

instance_destroy();

with (other) {
	if (objectInvincible <= 0) {
		var damageAmount = calculate_projectile_damage(self);
				
		currentObjectHealth -= damageAmount;
		objectInvincible = room_speed/2;	
				
		var staggerAmount = max((damageAmount - enemyStaggerResistance)*oPlayerController.spearAlternateStaggerMultiplier, 0);
				
		// Damage Numbers
		var damageNumbers = instance_create_layer(x, y-32, "UI", oDamageNumbers);
		damageNumbers.damageNumber = damageAmount;
				
		// Camera Zoom
		if (enemyCurrentStagger + staggerAmount >= enemyMaxStagger && currentObjectHealth > 0 && distance_to_object(oPlayerBody) < 192) {
			camera_zoom(oPlayerController.staggerCameraWidth, oPlayerController.staggerCameraHeight);
			oCamera.state = cameraState.stagger;
		}
				
		// Stagger
		if (currentObjectHealth > 0) { // Only Add Stagger if Enemy is alive.
			add_stagger(self, staggerAmount);
			oPlayerController.spearLastObjectHit = id;
			oPlayerController.alarm[0] = room_speed*7.5; // Remove Object Reference after 5 seconds.
		} else {
			// Stop Game from referencing objects that don't exist
			oPlayerController.spearLastObjectHit = oPlayerBody.id;
		}
				
				
	}
}
