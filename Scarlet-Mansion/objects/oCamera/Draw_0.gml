/// @description Draw

if (global.DEBUG == false) {
	exit;	
}

draw_self();


/* Old Code that might be useful later

//Distance from Mouse
draw_text(x, y-32, distance_to_point(target.x, target.y));

// Current Camera State
draw_text(x, y-64, string(state));

