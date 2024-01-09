function gui_spear_projectile_bar(currentCooldown, maxCooldown){
	argument0 = currentCooldown;
	argument1 = maxCooldown;
	
	var fillAmount = 0;
	fillAmount = clamp(fillAmount, currentCooldown/maxCooldown, 1);
	
	var col = c_yellow;
	
	
	draw_sprite_stretched_ext(sSpearProjectileBackground, 0, oPlayerBody.x - 26, oPlayerBody.y - 33, 44, 5, c_white, 1);
	draw_sprite_stretched_ext(sSpearProjectileBar, 0, oPlayerBody.x - 24, oPlayerBody.y - 32, 40*fillAmount, 3, col, 1);
}