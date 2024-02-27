// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_item(itemName, itemDescription, itemSprite){
	itemName = argument0;
	itemDescription = argument1;
	itemSprite = argument2;
	
	draw_sprite_ext(itemSprite, 0, viewportWidth*.5, viewportHeight*.2, 3, 3, 0, c_white, drawItemAlpha);

	draw_set_alpha(drawItemAlpha);
	draw_set_halign(fa_center);
	draw_text_ext_transformed(viewportWidth*.5, viewportHeight*.3, itemName, 24, 200, 6, 6, 0);
	draw_text_ext_transformed(viewportWidth*.5, viewportHeight*.4, itemDescription, 12, 600, 3, 3, 0);
	draw_set_alpha(1);

}