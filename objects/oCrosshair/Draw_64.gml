/// @description Chance Colour

draw_sprite_ext(sCrosshair, 0, wx, wy, 3, 3, 0, crosshairColour, 1);	

if (global.DEBUG != true) {
	exit;
}	

draw_text(400, 64, wx);
draw_text(400, 96, mouse_x);
draw_text(400, 128, wy);
draw_text(400, 160, mouse_y);
draw_text_color(400, 192, "Crosshair", crosshairColour, crosshairColour, crosshairColour, crosshairColour, 1);
