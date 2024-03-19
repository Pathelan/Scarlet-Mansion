/// @description Enable/Disable Collision

if (!instance_exists(oPlayerBody)) {
	exit; // Only run code if player is alive
}

if (round(oPlayerBody.y + (oPlayerBody.sprite_height/2)) > y || oPlayerBody.keyDown) {
	mask_index = -1
} else {
	mask_index = sPlatform;
}