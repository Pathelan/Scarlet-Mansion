/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

enemyName = "Akaiakuma";

// States
enum placeholderState {
	IDLE, // Normal State, moves randomly around location
	CHASE, // Follows the Player
	WINDUP, // Doesn't Move, start of attack
	ATTACK, // Doesn't Move, end of the attack
	FOLLOW, // Goes to the last location it saw the player at
}

// State Variables
stateShiftTimerMax = room_speed*2; // How Long the enemy has to wait before changing states.
stateShiftTimer = stateShiftTimerMax;

idleRange = 256; // Size they can move about in the idle range.
chaseRange = 128; // The range the enemy will follow the player at.
attackRange = 96; // The range needed to perform an attack;
windupTimeSeconds = 0.5; // How Long the windup is in seconds
followPosition = [0, 0]; // 2D Array of the last player position.
