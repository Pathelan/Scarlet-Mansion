// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_win_timer(countdown, phase){
	countdown = argument0;
	phase = argument1;
	
	var fillAmount = 0;
	fillAmount = clamp(fillAmount, countdown/(room_speed*135), 1);
	
	var col = c_white;
	col = make_color_rgb(255*(1-fillAmount), 255*fillAmount, 0);
	
	draw_sprite_stretched_ext(sStaggerLargeBackground, 0, viewportWidth*.375-6, viewportHeight*.9-3, 524, 30, c_white, 1);
	draw_sprite_stretched_ext(sStaggerLarge, 0, viewportWidth*.375, viewportHeight*.9, 512*fillAmount, 24, col, 1);
	
	// Phase Text
	draw_text_transformed(viewportWidth*.5, viewportHeight*.9+32, "Phase: " + string(phase), 3, 3, 0);
}