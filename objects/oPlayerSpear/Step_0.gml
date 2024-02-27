/// @desc Follow Player
get_input();


if (distance_to_point(mouse_x, mouse_y) > 4) {
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}

// Visuals
player_spear_visuals();

// Primary Attack
player_spear_primary_cooldown();
player_spear_primary();

// Alternate Attack
player_spear_alternate();




// Debug
if (instance_exists(oPlayerBody)) {
	x = oPlayerBody.x;
	y = oPlayerBody.y;
} else {
	show_message("Spear exists after Player Destroyed!!");
	exit;
}
	






