function gui_healthbar(currentHealth, maxHealth){
	argument0 = currentHealth;
	argument1 = maxHealth;
	
	var fillAmount = 0;
	fillAmount = clamp(fillAmount, currentHealth/maxHealth, 1);
	
	var col = c_white;
	col = make_color_rgb(255 - (255*fillAmount), 255*fillAmount, 0);
	
	
	draw_sprite_stretched_ext(sHealthBackground, 0, viewportWidth*.05 - 6, viewportHeight*.075-3, 524, 30, c_white, 1);
	draw_sprite_stretched_ext(sHealthBar, 0, viewportWidth*.05, viewportHeight*.075, 512*fillAmount, 24, col, 1);
	
	
	
	// Draw Health Text
	draw_text(viewportWidth*.1, viewportHeight*.075, string(currentHealth) + "/" + string(maxHealth));
}