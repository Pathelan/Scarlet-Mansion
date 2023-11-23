/// @description Move To Mouse

wx = window_mouse_get_x();
wy = window_mouse_get_y();

x = mouse_x;
y = mouse_y;


if (collision_circle(mouse_x, mouse_y, 8, oAttackableParent, false, true)) {
	crosshairColour = c_red;
} else {
	crosshairColour = c_white;	
}
