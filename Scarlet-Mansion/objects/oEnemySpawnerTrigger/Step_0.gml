/// @description Enable spawner

if (place_meeting(x, y, oPlayerBody)) {
	oEnemySpawner.phase = 1;
	oEnemySpawner.alarm[0] = 1;	
	oEnemySpawner.alarm[1] = room_speed*45;
	oGUI.winPhase = 1;
	instance_destroy();
}

