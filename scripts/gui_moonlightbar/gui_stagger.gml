function gui_stagger(currentStagger, maxStagger){
	argument0 = currentStagger;
	argument1 = maxStagger;
	
	var fillAmount = 0;
	fillAmount = clamp(fillAmount, currentStagger/maxStagger, 1);
	
	var col = c_white;
	if (currentStagger < maxStagger) {
		col = make_color_rgb(255, 40 + (140*fillAmount), 0);
	} else if (currentStagger >= maxStagger) {
		col = make_color_rgb(240, 255, 0);
	}
	
	draw_sprite_stretched_ext(sStaggerLargeBackground, 0, viewportWidth*.7-6, viewportHeight*.075-3, 524, 30, c_white, drawEnemyStaggerAlpha);
	draw_sprite_stretched_ext(sStaggerLarge, 0, viewportWidth*.7, viewportHeight*.075, 512*fillAmount, 24, col, drawEnemyStaggerAlpha);
	
	
	
	// Draw Stagger Text
	var drawCurrentStagger = string(floor(currentStagger/10)) + "." + string(currentStagger % 10) + "%";
	var drawMaxStagger = string(floor(maxStagger/10)) + "." + string(maxStagger % 10) + "%";
	
	draw_set_alpha(drawEnemyStaggerAlpha);
	draw_text(viewportWidth*.75, viewportHeight*.075+32, drawCurrentStagger + "/" + drawMaxStagger);
	draw_text(viewportWidth*.9, viewportHeight*.075-16, drawEnemyName);
	
	draw_set_alpha(1);
}