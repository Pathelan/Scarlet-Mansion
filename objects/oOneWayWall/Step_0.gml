/// @description Enable/Disable Collision

if (!instance_exists(oPlayerBody)) {
	exit; // Only run code if player is alive
}

if (round(oPlayerBody.x - (oPlayerBody.sprite_width/2)) < x) {
	mask_index = -1
} else {
	mask_index = sOneWayWall;
}