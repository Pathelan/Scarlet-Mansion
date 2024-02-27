/// @function                 player_spear_visuals(type);
/// @param {string}  type  The message to show
/// @description              all, sprite, numbers, particles

function player_spear_visuals(type){
	
	switch (type) {
		case "all":
			sprite_index = oPlayerController.spearSprite;
			
			var damageNumbers = instance_create_layer(x, y-32, "UI", oDamageNumbers);
			damageNumbers.damageNumber = buffer_peek(oPlayerController.bufferSpearDamage, 0, buffer_s32);
			
			oParticleSystem.dir = -point_direction(oPlayerBody.x, oPlayerBody.y, mouse_x, mouse_y);
			part_particles_create(oParticleSystem.particleSystem, oPlayerBody.x+_xx, oPlayerBody.y+_yy, oParticleSystem.particleSpearHit, 5);
			break;
			
		case "sprite":
			sprite_index = oPlayerController.spearSprite;
			break;
			
		case "numbers":
			var damageNumbers = instance_create_layer(x, y-32, "UI", oDamageNumbers);
			damageNumbers.damageNumber = buffer_peek(oPlayerController.bufferSpearDamage, 0, buffer_s32);
			break;
		
		case "particles":
			oParticleSystem.dir = -point_direction(oPlayerBody.x, oPlayerBody.y, mouse_x, mouse_y);
			part_particles_create(oParticleSystem.particleSystem, oPlayerBody.x+_xx, oPlayerBody.y+_yy, oParticleSystem.particleSpearHit, 5);
			break;
	}
	
	
	
}