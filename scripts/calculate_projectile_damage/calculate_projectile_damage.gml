function calculate_projectile_damage(target){
	argument0 = target
	
	return floor(
	irandom_range(oPlayerController.spearAlternateDamage*.8, oPlayerController.spearAlternateDamage*1.2)
	*target.enemyDamageMultiplier
	);
	
	/* How Damage is Calculated
	1) Make sure value is returned to whatever is calling it.
	2) Make sure it is an Integer.
	3) Add Randomness to Base Damage. (+/-20%)
	4) Multiply total by Enemy Resistance.
	
	... Add More on Extra Lines to make it easy to read. 
	*/
}