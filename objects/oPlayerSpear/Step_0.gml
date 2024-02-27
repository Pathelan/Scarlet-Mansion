/// @desc Follow Player
get_input();

// Rotate to Mouse
if (distance_to_point(mouse_x, mouse_y) > 4) {
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}



// Primary Attack
player_spear_primary_cooldown(); // Used for attack cooldowns
player_spear_primary(); // Contains all the Attacking and Staggering code.



// Alternate Attack
player_spear_alternate(); // Secondary/Alternative attack code




#region Debug
if (instance_exists(oPlayerBody)) {
	x = oPlayerBody.x;
	y = oPlayerBody.y;
} else {
	show_message("Spear exists after Player Destroyed!!");
	exit;
}
	


#endregion