function player_spear_primary(list = hitObjects){
	if (image_index > 2 && image_index < 7) {
		
		// Get Lengthdir
		_dir = point_direction(x, y, mouse_x, mouse_y);
		buffer_poke(oPlayerController.bufferSpearPosition, 0, buffer_f16, lengthdir_x(_len, _dir)); // Store it in buffer for particles
		buffer_poke(oPlayerController.bufferSpearPosition, 8, buffer_f16, lengthdir_y(_len, _dir));
		_xx = buffer_peek(oPlayerController.bufferSpearPosition, 0, buffer_f16);
		_yy = buffer_peek(oPlayerController.bufferSpearPosition, 8, buffer_f16);

		var _yoffset = 1;
	
		// Collision Lists
		collision_circle_list(x + _xx, y + _yy-_yoffset, oPlayerController.spearRadius, oAttackableParent, true, true, list, false);
		collision_line_list(x, y-_yoffset, x+_xx, y+_yy-_yoffset, oAttackableParent, true, true, list, false);

		// Only run code if an object is hit
		if (ds_list_size(list) <= 0) {
			return;	
		}
		
		// Shorter Cooldown if Object hit
		attackCooldown = oPlayerController.spearFastCooldown;
	
		// Deal Damage to all Objects hit
		randomise();
		for (var i = 0; i<ds_list_size(list); i++) {
			var currentObject = ds_list_find_value(list, i);
		
			with (currentObject) {
				if (object_get_parent(object_index) != oEnemyParent) {

					// Deal Damage to Object
					currentObjectHealth -= oPlayerController.spearDamage;					
					
					return;
				} else {
					
					// Deal Damage to Enemy
					if (objectInvincible <= 0) {
							
						// Deal Damage and Stagger
						player_spear_primary_damage(currentObject);
							
					}
					ds_list_delete(list, i); // Remove current object from list.
				}
					
				
			}
			
			// Particle Effects and Damage Numbers
				/*player_spear_visuals(isEnemy); 
				
				Either draws every frame an attack lands, doesn't draw at all or crashes when hitting a destroyable wall.
				Cause: Invincibility is set to 30 in primary_damage, walls don't have invincibility.
				Fix: Either figure out a middleground or rework the system to fit this issue*/
				
			
			// Clear List from last attack.
			ds_list_clear(list);
		} 
	}
}