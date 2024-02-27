function calculate_stagger(){
	staggerAmount = max((buffer_peek(oPlayerController.bufferSpearDamage, 0, buffer_s32)
						- enemyStaggerResistance)
						*oPlayerController.spearStaggerMultiplier, 
						0);
						
						/* How Stagger is Calculated
						1) Get Player's Damage from Buffer.
						2) Take away Enemy Stagger Resistance.
						3) Multiply by Enemy Stagger Resistance.
						4) Make sure value is above 0.
	
						... Add More on Extra Lines to make it easy to read. 
						*/
}