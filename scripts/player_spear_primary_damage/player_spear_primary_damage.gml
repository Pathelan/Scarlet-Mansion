function player_spear_primary_damage(target){
	
	// Damage
	damageAmount = calculate_damage(target);
	buffer_poke(oPlayerController.bufferSpearDamage, 0, buffer_s32, damageAmount);
				
	currentObjectHealth -= buffer_peek(oPlayerController.bufferSpearDamage, 0, buffer_s32);
	objectInvincible = room_speed/2;
	

	// Stagger
	player_spear_primary_stagger(target);
}