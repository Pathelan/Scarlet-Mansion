/// @description Debug
draw_self();

if (global.DEBUG == false) {
	exit;	
}

for (var i = 0; i<ds_list_size(hitObjects); i++) {
	draw_text(x+32*i, y-96, i);
}

// Draw Collision Box
if (image_index > 2 && image_index < 6) {
	var _RADIUS = 14;
	var _len = sprite_width - (_RADIUS/2);
	var _dir = point_direction(x, y, mouse_x, mouse_y);
	var _xx = lengthdir_x(_len, _dir);
	var _yy = lengthdir_y(_len, _dir);
	
	var _yoffset = 1;
	
	draw_set_alpha(.25);
	draw_circle_color(x + _xx, y + _yy-_yoffset, _RADIUS, c_red, c_red, false);
	draw_line_color(x, y-_yoffset, x+_xx, y+_yy-_yoffset, c_red, c_red);
	draw_set_alpha(1);
}

draw_text(x+64, y, attackCooldown);




