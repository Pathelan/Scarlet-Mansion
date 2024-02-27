function player_spear_primary_stagger(){
	if (currentObjectHealth > 0) { // Only Add Stagger if Enemy is alive.
		add_stagger(currentObject, staggerAmount);
		oPlayerController.spearLastObjectHit = id;
		oPlayerController.alarm[0] = room_speed*7.5; // Remove Object Reference after 5 seconds.
	} else {
		// Stop Game from referencing objects that don't exist
		oPlayerController.spearLastObjectHit = oPlayerBody.id;
	}
}