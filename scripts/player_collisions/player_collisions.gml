function player_collisions(){
	get_input(); // Get Player Inputs
	player_movement(); // Give Player Speed
	
	#region Horizontal Collisions
	if (place_meeting(x+hspd, y, oCollision)) {
		while (!place_meeting(x+sign(hspd), y, oCollision)) {
			x += sign(hspd);
		}
		hspd = 0; // Stop moving when next to wall horizontally
	}
	x += hspd; // Move while not next to wall horizontally
	#endregion
	
	
	#region Vertical Collisions
	if (place_meeting(x, y+vspd*global.TIMESCALE, oCollision)) {
		while (!place_meeting(x, y+sign(vspd), oCollision)) {
			y += sign(vspd);
		}
		vspd = 0; // Stop moving when next to wall vertically
	}
	y += vspd*global.TIMESCALE; // Move while not next to wall vertically
	#endregion
}
