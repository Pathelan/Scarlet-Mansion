/// @description Movement

if (canMove) {
	player_collisions(); // Movement and Collisions
	// Direction controlled in player_movement
}




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
