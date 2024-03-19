/// @description Reset Enemy Stagger UI

if (drawEnemyStaggerTimer > 0 ) {
	drawEnemyStaggerTimer--;
} else {
	if (drawEnemyStaggerAlpha > 0) {
		drawEnemyStaggerAlpha -= 0.1;	
	} else {
		drawEnemyStaggerID = noone;	
	}

}

// Item UI
if (drawItemTimer > 0) {
	drawItemTimer--;
} else {
	if (drawItemAlpha > 0) {
		drawItemAlpha -= 0.05;
	}
}