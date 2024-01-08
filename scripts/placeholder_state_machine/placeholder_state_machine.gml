
function placeholder_state_machine(){
	var p = oPlayerBody;
	
	switch (placeholderState) {
			case placeholderState.IDLE:
				// Change to Chasing
				if (distance_to_object(p) <= chaseRange && stateShiftTimer <= 0) {
						placeholderState = placeholderState.CHASE;
						drawAlert = true;
						isAlert = 0;
						stateShiftTimer = stateShiftTimerMax;
						return;
				}
				
				x = lerp(x, idlePositionX, 0.025);
				y = lerp(y, idlePositionY, 0.025);
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
						windupTimeFrames = 30; // Reset Windup timer
						stateShiftTimer = stateShiftTimerMax;
						return;
				}
				
				move_towards_point(p.x, p.y, 0.5);
				
				break;
				
			case placeholderState.WINDUP:
				// Stop Moving
				speed = 0;
				
				// Windup
				image_speed = 1;
				sprite_index = sEnemyWindup;
				
				break;
				
			case placeholderState.ATTACK:
				// Repeat Attack if Playeri s still in range.
				if (distance_to_object(p) <= attackRange && stateShiftTimer <= 0) {
						placeholderState = placeholderState.WINDUP;
						windupTimeFrames = 30; // Reset Windup timer
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
					attackTimeFrames --;	
				} else {
					var proj = instance_create_layer(x, y, "Instances", oEnemyProjectile);	
					proj.direction += random_range(-5, 5); 
					attackTimeFrames = 180;
				}
				
				break;
				
			case placeholderState.FOLLOW:
				// Change to Attacking
				if (distance_to_object(p) >= chaseRange && stateShiftTimer <= 0) {
						placeholderState = placeholderState.IDLE;
						isLost = 0;
						drawLost = true;
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