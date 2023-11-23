/// @description Death

if (damageNumbersSetScale == false) {
	damageNumbersSetScale = true;
	damageNumberScale = min((damageNumber/oPlayerController.spearDamage), 2);
}	


if (damageNumberTimer > 0) {
	damageNumberTimer --;
	speed = max(0, speed-(speed/50));
	if (damageNumberTimer <= 15) {
		damageNumberAlpha -= 1/15;
		damageNumberScale = max(0, damageNumberScale-0.025);
	}
} else {
	instance_destroy();	
}





