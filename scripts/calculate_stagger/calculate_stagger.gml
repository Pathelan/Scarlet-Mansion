function calculate_stagger(){
	staggerAmount = max((buffer_peek(oPlayerController.bufferSpearDamage, 0, buffer_s32) - enemyStaggerResistance)*oPlayerController.spearStaggerMultiplier, 0);
}