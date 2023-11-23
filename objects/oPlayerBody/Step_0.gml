/// @description Movement

player_collisions(); // Movement and Collisions

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


if (keyAim) {
	var bullet = instance_create_layer(x, y, "Instances", oBullet);
	bullet.direction += random_range(-5, 5)
}

if (keyboard_check_pressed(ord("R"))) {
	game_restart();	
}

if (mouse_wheel_up()) {
	slowTimer += 30;
	slowIntensity += .25;
}

if (mouse_wheel_down() && slowIntensity > 1 && slowTimer > 30) {
	slowTimer -= 30;
	slowIntensity -= .25;
}

if (keyboard_check_pressed(ord("E"))) {
	slowIntensity = 1.5;	
}

if (keyboard_check_pressed(ord("Q"))) {
	slowTimer = 30;	
}