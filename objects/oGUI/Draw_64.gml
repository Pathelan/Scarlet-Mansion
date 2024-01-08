/// @description 

if (drawEnemyStaggerID != noone) {
	gui_stagger(drawEnemyCurrentStagger, drawEnemyMaxStagger);
}

// Player Health
gui_healthbar(oPlayerController.playerHealth, oPlayerController.playerMaxHealth);

// Player Moonlight
gui_moonlightbar(oPlayerController.playerMoonlight, oPlayerController.playerMaxMoonlight);
