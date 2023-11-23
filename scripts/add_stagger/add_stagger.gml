function add_stagger(target, amount){
	argument0 = target;
	argument1 = amount;
	
	// Check if Target Is Enemy
	if (object_get_parent(target.object_index) == oEnemyParent) { 
		enemyCurrentStagger += amount;
		// Make sure it takes 1 second to start decaying regardless of timescale.
		enemyStaggerDecayTimer = room_speed*global.TIMESCALE; 
	}
}