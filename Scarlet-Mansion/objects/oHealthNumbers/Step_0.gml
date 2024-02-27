/// @description Death



if (healthNumberTimer > 0) {
	healthNumberTimer --;
	speed = max(0, speed-(speed/50));
	if (healthNumberTimer <= 15) {
		healthNumberAlpha -= 1/15;
		healthNumberScale = max(0, healthNumberScale-0.025);
	}
} else {
	instance_destroy();	
}





