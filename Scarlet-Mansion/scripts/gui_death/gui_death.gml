// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_death(){
	var viewWidth = view_get_wport(0);
	var viewHeight = view_get_hport(0);
	
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, viewWidth, viewHeight, c_red, c_red, c_red, c_red, false);
	draw_set_alpha(1);
	
	draw_text_transformed(viewWidth*.5, viewHeight*.33, "You Died!", 4, 4, 0);
	draw_text_transformed(viewWidth*.5, viewHeight*.5, "R to restart", 2, 2, 0);
}