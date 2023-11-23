/// @description Destroy

// Invincibility
if (objectInvincible > 0) {
	objectInvincible --;	
}

// Die
if (currentObjectHealth <= 0) {
	instance_destroy();	
}





