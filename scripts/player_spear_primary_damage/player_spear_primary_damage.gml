function player_spear_primary_damage(target){
	
	// Damage
	damageAmount = calculate_damage(target);
	buffer_poke(oPlayerController.bufferSpearDamage, 0, buffer_s32, damageAmount);
				
	currentObjectHealth -= buffer_peek(oPlayerController.bufferSpearDamage, 0, buffer_s32);
	objectInvincible = room_speed/2;
	
	// Damage Numbers
	var damageNumbers = instance_create_layer(x, y-32, "UI", oDamageNumbers);
	damageNumbers.damageNumber = buffer_peek(oPlayerController.bufferSpearDamage, 0, buffer_s32);
	
	// Particles
	var _xx = buffer_peek(oPlayerController.bufferSpearPosition, 0, buffer_s16);
	var _yy = buffer_peek(oPlayerController.bufferSpearPosition, 8, buffer_s16);
	oParticleSystem.dir = -point_direction(oPlayerBody.x, oPlayerBody.y, mouse_x, mouse_y);
	part_particles_create(oParticleSystem.particleSystem, oPlayerBody.x+_xx, oPlayerBody.y+_yy, oParticleSystem.particleSpearHit, 5);

	// Stagger
	player_spear_primary_stagger(target);
}