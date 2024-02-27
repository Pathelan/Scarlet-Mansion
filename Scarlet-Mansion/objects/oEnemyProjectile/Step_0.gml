/// @description Insert description here
// You can write your code in this editor

speed = 1.5*global.TIMESCALE;

if (place_meeting(x, y, oCollision)) {
	instance_destroy();	
}

if (place_meeting(x, y, oPlayerBody)) {
	oPlayerController.playerHealth -= irandom_range(projectileDamage*.8, projectileDamage*1.2);
	instance_destroy();	
}


