/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

enemyName = "Akaiakuma";

usesGravity = false;
isAlert = 0;
drawAlert = false;
isLost = 0;
drawLost = false;

// States
enum placeholderState {
	IDLE, // Normal State, moves randomly around location
	ALERT, // The player has entered the vision range
	CHASE, // Follows the Player
	WINDUP, // Doesn't Move, start of attack
	ATTACK, // Doesn't Move, end of the attack
	FOLLOW, // Goes to the last location it saw the player at
	STUNNED, // When hit for high damage or staggered
}

placeholderState = placeholderState.IDLE;

// State Variables
stateShiftTimerMax = room_speed*2; // How Long the enemy has to wait before changing states.
stateShiftTimer = stateShiftTimerMax;

idleMoveTimer = room_speed*random_range(1, 5);
idleRange = 64; // Size they can move about in the idle range.
idlePositionX = x;
idlePositionY = y;

chaseRange = 128; // The range the enemy will follow the player at.
attackRange = 72; // The range needed to perform an attack;
windupTimeFrames = 30; // How Long the windup is in seconds
attackTimeFrames = 0; // How Often the enemy can attack
followPosition = [0, 0]; // 2D Array of the last player position.
