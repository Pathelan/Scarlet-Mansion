/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

// Stunned
if (isStunned) {
	placeholderState = placeholderState.STUNNED;	
}

// Idle Movement
if (idleMoveTimer > 0) {
	idleMoveTimer --;
} else {
	randomise();
	var randX = random_range(x-idleRange, x+idleRange);
	var randY = random_range(y-idleRange, y+idleRange);
	var idleTarget = collision_line_point(x, y, x + randX, y + randY, oCollision, true, true);
	
	if (idleTarget[0] != noone) { // Check for Walls
		idlePositionX = lerp(x, randX, 0.5);
		idlePositionY = lerp(y, randY, 0.5);
		// Move halfway between position and target position when trying to move into a wall.
	} else {
		idlePositionX = randX;
		idlePositionY = randY;
	}
	idleMoveTimer = (room_speed*random_range(2, 4))*global.TIMESCALE;
}

// Alerted
if (isAlert < 30) {
	isAlert += 1*global.TIMESCALE;
} else {
	drawAlert = false;	
}

// Lost
if (isLost < 30) {
	isLost += 1*global.TIMESCALE;
} else {
	drawLost = false;	
}

// State Changes
if (stateShiftTimer > 0) {
	stateShiftTimer -= 1*global.TIMESCALE;	
}
placeholder_state_machine();