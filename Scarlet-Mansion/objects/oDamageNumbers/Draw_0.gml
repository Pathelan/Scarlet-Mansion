/// @description Draw

// Allign
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (isCrit == false) {
	draw_text_ext_transformed_color(x, y, damageNumber, 0, 100, damageNumberScale, damageNumberScale, 0, c_white, c_white, c_white, c_white, damageNumberAlpha);
	exit;
}






