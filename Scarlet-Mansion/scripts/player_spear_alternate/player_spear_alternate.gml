function player_spear_alternate(){
	
	// Reduce Cooldown
	if (fireCooldown > 0) {
		fireCooldown --;
	}
	
	// Fire if Possible
	if (keyAim && fireCooldown <= 0 && canFire && sprite_index != sPlayerSpearLong) {
		drawSpear = false;
		canAttack = false;
		canFire = false;
		alarm[0] = room_speed;
		
		instance_create_layer(x, y, "Instances", oSpearProjectile);
	}
}