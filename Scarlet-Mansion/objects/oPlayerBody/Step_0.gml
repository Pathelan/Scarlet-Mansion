/// @description Movement

if (canMove) {
	player_collisions(); // Movement and Collisions
}

if (mouse_x < x) {
	playerDirection = -1;	
} else {
	playerDirection = 1;	
}

image_xscale = playerDirection;


// Debug
if (keyboard_check_pressed(ord("0"))) { // Toggle Debug
	if (global.DEBUG == false) {
		global.DEBUG = true;	
	} else {
		global.DEBUG = false;	
	}
}

if (keyboard_check_pressed(ord("R"))) {
	game_restart();	
}
