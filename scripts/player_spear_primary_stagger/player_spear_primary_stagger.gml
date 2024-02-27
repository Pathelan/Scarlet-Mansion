function player_spear_primary_stagger(target){
	
	calculate_stagger();
				
	// Camera Zoom
	if (enemyCurrentStagger + staggerAmount >= enemyMaxStagger && currentObjectHealth > 0) {
		camera_zoom(oPlayerController.staggerCameraWidth, oPlayerController.staggerCameraHeight);
		oCamera.state = cameraState.stagger;
	}
	
	// Stagger Enemy
	if (currentObjectHealth > 0) { // Only Add Stagger if Enemy is alive.
		add_stagger(target, staggerAmount);
		oPlayerController.spearLastObjectHit = id;
		oPlayerController.alarm[0] = room_speed*7.5; // Remove Object Reference after 5 seconds.
	} else {
		// Stop Game from referencing objects that don't exist
		oPlayerController.spearLastObjectHit = oPlayerBody.id;
	}
}