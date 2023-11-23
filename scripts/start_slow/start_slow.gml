function start_slow(timer, intensity){
	argument0 = timer;
	argument1 = intensity;
	
	// Set Variables
	global.TIMESCALE = 1/intensity;
	
	oGame.alarm[0] = timer;
}