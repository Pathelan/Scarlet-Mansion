
function placeholder_state_machine(){
	var p = oPlayerBody;
	
	switch (placeholderState) {
			case placeholderState.IDLE:
				// Change to Chasing
				if (distance_to_object(p) <= chaseRange && stateShiftTimer <= 0) {
						placeholderState = placeholderState.CHASE;
						drawAlert = true;
						isAlert = 0;
						stateShiftTimer = stateShiftTimerMax/2;
						return;
				}
				
				x = lerp(x, idlePositionX, 0.025*global.TIMESCALE);
				y = lerp(y, idlePositionY, 0.025*global.TIMESCALE);
				break;
				
			case placeholderState.CHASE:
				// Change to Chasing
				if (distance_to_object(p) >= chaseRange && stateShiftTimer <= 0) {
						placeholderState = placeholderState.FOLLOW;
						stateShiftTimer = stateShiftTimerMax;
						return;
				}
				
				// Change to Attacking
				if (distance_to_object(p) <= attackRange && stateShiftTimer <= 0) {
						placeholderState = placeholderState.WINDUP;
						stateShiftTimer = stateShiftTimerMax;
						return;
				}
				
				move_towards_point(p.x, p.y-16, 0.75*global.TIMESCALE);
				
				break;
				
			case placeholderState.WINDUP:
				// Stop Moving
				speed = 0;
				
				// Windup
				image_speed = 1*global.TIMESCALE;
				sprite_index = sEnemyWindup;
				
				break;
				
			case placeholderState.ATTACK:
				// Repeat Attack if Playeri s still in range.
				if (distance_to_object(p) <= attackRange && stateShiftTimer <= 0) {
						placeholderState = placeholderState.WINDUP;
						stateShiftTimer = stateShiftTimerMax;
						return;
				}
				
				// Otherwise, follow the player
				if (distance_to_object(p) >= attackRange && stateShiftTimer <= 0) {
						placeholderState = placeholderState.CHASE;
						drawAlert = true;
						isAlert = 0;
						stateShiftTimer = stateShiftTimerMax;
						return;
				}
				
				if (attackTimeFrames > 0) {
					attackTimeFrames -= 1*global.TIMESCALE;	
				} else {
					var proj = instance_create_layer(x, y, "Instances", oEnemyProjectile);	
					proj.direction += random_range(-5, 5); 
					proj.projectileDamage = enemyDamage;
					attackTimeFrames = 180;
				}
				
				break;
				
			case placeholderState.FOLLOW:
				// Change to Attacking
				if (distance_to_object(p) >= chaseRange && stateShiftTimer <= 0) {
						placeholderState = placeholderState.IDLE;
						isLost = 0;
						drawLost = true;
						var dir = point_direction(x, y, oPlayerBody.x, oPlayerBody.y);
						idlePositionX = x + lengthdir_x(min(distance_to_object(oPlayerBody), 32), dir);
						idlePositionY = y + lengthdir_y(min(distance_to_object(oPlayerBody), 32), dir);
						stateShiftTimer = stateShiftTimerMax;
						return;
				}
				
				break;
				
			case placeholderState.STUNNED:
				// Do nothing while stunned :)
				speed = 0;
				break;
			
	}
}