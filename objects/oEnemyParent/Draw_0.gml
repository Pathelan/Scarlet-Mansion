
draw_self();


if (enemyCurrentStagger > 0 && oPlayerController.spearLastObjectHit.id != id) {
	
	// Draw Local Stagger Bar
	var fillAmount = 0;
	fillAmount = clamp(fillAmount, enemyCurrentStagger/enemyMaxStagger, 1);
	
	var col = c_white;
	if (enemyCurrentStagger < enemyMaxStagger) {
		col = make_color_rgb(255, 40 + (140*fillAmount), 0);
	} else if (enemyCurrentStagger >= enemyMaxStagger) {
		col = make_color_rgb(240, 255, 0);
	}
	
	draw_sprite_stretched(sStaggerSmallBackground, 0, x-17, y-13, 52, 5)
	draw_sprite_stretched_ext(sStaggerSmall, 0, x-15, y-12, 48*fillAmount, 3, col, 1);
}


if (global.DEBUG == false) {
	exit;	
}
draw_text(x, y+32, id);
draw_text(x, y-32, string(currentObjectHealth) + "/" + string(maxObjectHealth));
draw_text(x, y-48, enemyStaggerResistance);
draw_text(x, y-64, string(enemyCurrentStagger) + "/" + string(enemyMaxStagger));
draw_text(x, y-80, enemyDamageMultiplier);






