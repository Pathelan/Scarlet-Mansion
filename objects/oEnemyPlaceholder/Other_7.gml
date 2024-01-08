/// @description Insert description here
// You can write your code in this editor

if (sprite_index == sEnemyWindup) {
	sprite_index = sEnemy;
	image_speed = 0;
	attackTimeFrames = 0;
	placeholderState = placeholderState.ATTACK;
	stateShiftTimer = stateShiftTimerMax;
}


