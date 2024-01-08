/// @desc Follow Player
get_input();


if (distance_to_point(mouse_x, mouse_y) > 4) {
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}


// Attack
if (keyAttack && attackCooldown <= 0) {
	image_speed = 1;
	attackCooldown = oPlayerController.spearCooldown;
}

if (attackCooldown > 0) {
	attackCooldown --;
}

// Collisions
if (image_index > 2 && image_index < 6) {
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
		
		with (currentObject) {
			if (objectInvincible <= 0) {
				var damageAmount = calculate_damage(currentObject);
				
				currentObjectHealth -= damageAmount;
				objectInvincible = room_speed/2;
				
				// Particles
				oParticleSystem.dir = -point_direction(oPlayerBody.x, oPlayerBody.y, mouse_x, mouse_y);
				part_particles_create(oParticleSystem.particleSystem, oPlayerBody.x+_xx, oPlayerBody.y+_yy, oParticleSystem.particleSpearHit, 5);
				
				
				var staggerAmount = max((damageAmount - enemyStaggerResistance)*oPlayerController.spearStaggerMultiplier, 0);
				
				// Damage Numbers
				var damageNumbers = instance_create_layer(x, y-32, "UI", oDamageNumbers);
				damageNumbers.damageNumber = damageAmount;
				
				// Camera Zoom
				if (enemyCurrentStagger + staggerAmount >= enemyMaxStagger) {
					camera_zoom(oPlayerController.staggerCameraWidth, oPlayerController.staggerCameraHeight);
					oCamera.state = cameraState.stagger;
				}
				
				// Stagger
				if (currentObjectHealth > 0) { // Only Add Stagger if Enemy is alive.
					add_stagger(currentObject, staggerAmount);
					oPlayerController.spearLastObjectHit = id;
					oPlayerController.alarm[0] = room_speed*7.5; // Remove Object Reference after 5 seconds.
				} else {
					// Stop Game from referencing objects that don't exist
					oPlayerController.spearLastObjectHit = oPlayerBody.id;
				}
				
				
			}
		}
		ds_list_delete(hitObjects, i); // Remove current object from list.
	}
	
	// Clear List from last attack.
	ds_list_clear(hitObjects);
}







// Debug
if (instance_exists(oPlayerBody)) {
	x = oPlayerBody.x;
	y = oPlayerBody.y;
} else {
	show_message("Spear exists after Player Destroyed!!");
	exit;
}
	






