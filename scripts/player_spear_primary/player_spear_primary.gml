function player_spear_primary(){
	if (image_index > 2 && image_index < 7) {
		var _len = sprite_width - (oPlayerController.spearRadius/2);
		var _dir = point_direction(x, y, mouse_x, mouse_y);
		var _xx = lengthdir_x(_len, _dir);
		var _yy = lengthdir_y(_len, _dir);

		var _yoffset = 1;
	
		// Collision Lists
		collision_circle_list(x + _xx, y + _yy-_yoffset, oPlayerController.spearRadius, oAttackableParent, false, true, hitObjects, false);
		collision_line_list(x, y-_yoffset, x+_xx, y+_yy-_yoffset, oAttackableParent, false, true, hitObjects, false);

		// Shorter Cooldown if enemy hit
		if (ds_list_size(hitObjects) <= 0) {
			return;	
		}
	
		attackCooldown = oPlayerController.spearFastCooldown;
	
		// Deal Damage
		randomise();
		for (var i = 0; i<ds_list_size(hitObjects); i++) {
			var currentObject = ds_list_find_value(hitObjects, i);
		
			if (object_get_parent(currentObject.object_index) != oEnemyParent) {
				
						with (currentObject) { // Just deal damage
							currentObjectHealth -= oPlayerController.spearDamage;	
						}
						return;
						
					}
				}
			} else { // If object is an enemy.
				with (currentObject) {
					if (objectInvincible <= 0) {
						
				
						// Particles
						oParticleSystem.dir = -point_direction(oPlayerBody.x, oPlayerBody.y, mouse_x, mouse_y);
						part_particles_create(oParticleSystem.particleSystem, oPlayerBody.x+_xx, oPlayerBody.y+_yy, oParticleSystem.particleSpearHit, 5);
				
				
						var staggerAmount = max((damageAmount - enemyStaggerResistance)*oPlayerController.spearStaggerMultiplier, 0);
				
						
				
						// Camera Zoom
						if (enemyCurrentStagger + staggerAmount >= enemyMaxStagger && currentObjectHealth > 0) {
							camera_zoom(oPlayerController.staggerCameraWidth, oPlayerController.staggerCameraHeight);
							oCamera.state = cameraState.stagger;
						}
				
						// Stagger
						player_spear_primary_stagger();
			
			}
			
			ds_list_delete(hitObjects, i); // Remove current object from list.
		}
	
		// Clear List from last attack.
		ds_list_clear(hitObjects);
	}
}