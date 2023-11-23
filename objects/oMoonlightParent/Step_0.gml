/// @description Insert description here
// You can write your code in this editor

if (moonlightGraceTime > 0) {
	moonlightGraceTime --;	
}

if (hspd != 0 && moonlightGraceTime <= 0) {
	// Make hspd equal zero, regardless of positive or negative
	hspd -= sign(hspd)*0.025;	
}

if (moonlightSpeed == 0) {
	apply_collisions(true, 0.075);
}

if (distance_to_object(oPlayerBody) < 96 && moonlightTrackPlayer == false && isGrounded) {
	moonlightTrackPlayer = true;
	hspd = 0;
}

if (distance_to_object(oPlayerBody) < 4) {
	instance_destroy();	
}

// Move To Player
if (moonlightTrackPlayer == true) {
	
	// Make sure it doesn't disappear when following player
	moonlightLifetime = room_speed*3;
	
	// Add to speed
	moonlightSpeed += 0.25;
	move_towards_point(oPlayerBody.x, oPlayerBody.y, -3+moonlightSpeed*global.TIMESCALE);
}

if (moonlightLifetime > 0) {
	moonlightLifetime --;	
} else {
	instance_destroy();	
}



