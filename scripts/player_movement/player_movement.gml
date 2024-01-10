function player_movement(){
	var hinput = keyRight - keyLeft;
	
	// Horizontal Movement with Acceleration.
	if (hinput != 0) {
		hspd += acceleration*hinput*global.TIMESCALE;
		hspd = clamp(hspd, -movespeed*global.TIMESCALE, movespeed*global.TIMESCALE);
	} else {
		hspd = lerp(hspd, 0, 0.375*global.TIMESCALE);
	}
	
	// Gravity
	if (!place_meeting(x, y+1, oCollision) && vspd < 12) {
		isGrounded = false;
		if (!keyJump) {
			vspd += global.GRAVITY*jumpMultiplier*global.TIMESCALE;
		} else if (vspd < 12) {
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