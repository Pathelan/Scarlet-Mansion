/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

if (drawAlert) {
	draw_sprite(sVFXEnemyAlert, min(isAlert, 9), x, y-24);	
}

if (drawLost) {
	draw_sprite(sVFXEnemyLost, min(isLost, 9), x, y-24);	
}

if (global.DEBUG == false) {
	exit;	
}

draw_set_alpha(.2);
draw_circle_color(x, y, chaseRange, c_red, c_red, false);
draw_set_alpha(1);

draw_text(x, y+16, max(isAlert, 9));
