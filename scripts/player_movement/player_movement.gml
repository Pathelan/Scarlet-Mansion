function player_movement(){
	var hinput = keyRight - keyLeft;
	
	// Horizontal Movement with Acceleration.
	if (hinput != 0) {
		hspd += acceleration*hinput*global.TIMESCALE;
		hspd = clamp(hspd, -movespeed*global.TIMESCALE, movespeed*global.TIMESCALE);
	} else {
		hspd = lerp(hspd, 0, 0.5*global.TIMESCALE);	
	}
	
	// Gravity
	if (!place_meeting(x, y+1, oCollision)) {
		isGrounded = false;
		if (!keyJump) {
			vspd += global.GRAVITY*jumpMultiplier * global.TIMESCALE;
		} else {
			vspd += global.GRAVITY*global.TIMESCALE;
		}
	} else {
		isGrounded = true;
		jumpLeft = jumpMax;
	}
	
	// Jumping
	if (keyJumpPressed && jumpLeft > 0) {
		vspd = -jumpspeed;
		jumpLeft --;
	}
}