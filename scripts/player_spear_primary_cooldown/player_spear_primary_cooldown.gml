function player_spear_primary_cooldown(){
	// Perform attack if not on cooldown
	if (keyAttack && attackCooldown <= 0 && canAttack) {
		image_speed = 1;
		attackCooldown = oPlayerController.spearCooldown;
	}
	
	
	// Reduce Cooldown if not at 0
	if (attackCooldown > 0) {
		attackCooldown --;
	}
}