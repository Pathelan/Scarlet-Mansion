/// @description Damage

other.currentObjectHealth -= 5;

var stag = 50;

if (object_get_parent(other.object_index) == oEnemyParent) {
	if (other.enemyCurrentStagger + stag >= other.enemyMaxStagger) {
		camera_zoom(oPlayerController.staggerCameraWidth, oPlayerController.staggerCameraHeight);
		oCamera.state = cameraState.stagger;
		oCamera.alarm[0] = oPlayerController.staggerTimer;
		oCamera.target2 = other;
	}
	other.enemyCurrentStagger += stag;
	oPlayerController.spearLastObjectHit = other.object_index;
}

instance_destroy();






