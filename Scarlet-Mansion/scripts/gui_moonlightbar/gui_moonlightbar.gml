function gui_moonlightbar(currentMoonlight, maxMoonlight){
	argument0 = currentMoonlight;
	argument1 = maxMoonlight;
	
	var fillAmount = 0;
	fillAmount = clamp(fillAmount, currentMoonlight/maxMoonlight, 1);
	
	var col = c_aqua;
	
	
	draw_sprite_stretched_ext(sMoonlightBackground, 0, viewportWidth*.05 - 3, viewportHeight*.1-2, 524, 10, c_white, 1);
	draw_sprite_stretched_ext(sMoonlightBar, 0, viewportWidth*.05, viewportHeight*.1, 512*fillAmount, 6, col, 1);
}