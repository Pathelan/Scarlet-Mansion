/// @description Insert description here
// You can write your code in this editor

// Level Up
if (playerMoonlight >= playerMaxMoonlight) {
	playerMoonlight -= playerMaxMoonlight;
	playerMaxMoonlight *= 1.5;
	playerLevel += 1;
	
	// Stat Increases
	playerMaxHealth = floor(playerMaxHealth*1.05);
	playerHealth = playerMaxHealth;
	
	spearDamage += floor(spearDamage/20) + 2;
	spearAlternateDamage += floor(spearDamage/10) + 8;
	spearStaggerMultiplier += irandom_range(1, 3);
}

// Death
if (playerHealth <= 0) {
	oPlayerBody.canMove = false;	
	oPlayerWeapon.canAttack = false;	
	oPlayerWeapon.canFire = false;
	
	oGUI.deathScreen = true;
}