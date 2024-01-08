/// @description Insert description here
// You can write your code in this editor

// Level Up
if (playerMoonlight >= playerMaxMoonlight) {
	playerMoonlight -= playerMaxMoonlight;
	playerMaxMoonlight *= 1.1;
	playerLevel += 1;
	
	// Stat Increases
	playerMaxHealth = floor(playerMaxHealth*1.1);
	playerHealth = playerMaxHealth;
	
	spearDamage += floor(spearDamage/10) + 5;
}

