/// @description Insert description here
// You can write your code in this editor

// Level Up
if (playerMoonlight >= playerMaxMoonlight) {
	playerMoonlight -= playerMaxMoonlight;
	playerMaxMoonlight *= 1.25;
	playerLevel += 1;
	
	// Stat Increases
	playerMaxHealth = floor(playerMaxHealth*1.1);
	playerHealth = playerMaxHealth;
	
	spearDamage += floor(spearDamage/20) + 2;
	spearAlternateDamage += floor(spearDamage/10) + 15;
	spearStaggerMultiplier += irandom_range(1, 3);
}

// Death
if (playerHealth <= 0) {
	oPlayerBody.canMove = false;	
	oPlayerSpear.canAttack = false;	
	oPlayerSpear.canFire = false;
	
	oGUI.deathScreen = true;
}