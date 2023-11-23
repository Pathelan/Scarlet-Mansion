/// @description Initialise

// Camera Variables
target = oPlayerBody;
target2 = noone;
cameraWidth = 640;
cameraHeight = 360;
yOffset = 64;


// Camera States
state = cameraState.followPlayer;
enum cameraState
{
	followPlayer,
	followSpear,
	stagger
}