/// @description Debug Text

if (global.DEBUG == false) { // Don't run if no debug
	exit;	
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw Debug Text
draw_text(32, 32, "Timescale: " + string(global.TIMESCALE));
draw_text(32, 64, "Time Slow Timer: " + string(alarm[0]));
draw_text(32, 96, "isGrounded: " + string(oPlayerBody.isGrounded));
draw_text(32, 128, "Last Hit: " + string(oPlayerController.spearLastObjectHit));


