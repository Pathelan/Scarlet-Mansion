/// @description Debug
draw_self();


if (oPlayerController.powerup[0] == true) {
	draw_sprite_ext(sPlayerWings, 0, x-8*playerDirection, y-6, playerDirection, 1, 0, c_white, 1);
}



// Debug
if (global.DEBUG == false) {
	exit;	
}

// Only Draw if enemies are present
if (instance_exists(oAttackableParent)) {
	// Draw Fate Lines
	for (var i=-3; i<4; i++) {
		var _enemy = instance_nearest(x, y, oAttackableParent);
		var dir = point_direction(x, y, _enemy.x+(6*i), _enemy.y+(6*i));
		var len = 128;
	
		var _x = lengthdir_x(len, dir);
		var _y = lengthdir_y(len, dir);
	
		var collision = collision_line_point(x, y, _enemy.x+_x, _enemy.y+_y, oEnemyParent, true, true)
		if (collision[0] != noone) {
			draw_circle(collision[1], collision[2], 3, false);
		}
	
		draw_line(x, y, _enemy.x+_x, _enemy.y+_y);
	}
}
draw_text(x, y-48, "T: "+ string(slowTimer));
draw_text(x, y-32, "I: "+ string(slowIntensity));

