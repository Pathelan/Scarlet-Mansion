/// @description 

if (winCountdown > 0) {
	gui_win_timer(winCountdown, winPhase);
	draw_text(128, 400, winCountdown/(room_speed*135));
}

if (winScreen) {
	gui_win(); // Hooray!!
}

if (deathScreen) {
	gui_death(); // Oh no!!
}

if (drawEnemyStaggerID != noone) {
	gui_stagger(drawEnemyCurrentStagger, drawEnemyMaxStagger);
}

if (drawItemAlpha > 0) {
	gui_item(drawItemName, drawItemDescription, drawItemSprite);
}

// Player Health
gui_healthbar(oPlayerController.playerHealth, oPlayerController.playerMaxHealth);

// Player Moonlight
gui_moonlightbar(oPlayerController.playerMoonlight, oPlayerController.playerMaxMoonlight);
