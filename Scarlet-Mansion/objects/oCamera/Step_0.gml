/// @description Follow target

// Camera Size
var camWidth = camera_get_view_width(view_camera[0]);
var camHeight = camera_get_view_height(view_camera[0]);
if (camWidth != cameraWidth || camHeight != cameraHeight) {
		camera_set_view_size(view_camera[0], lerp(camWidth, cameraWidth, 0.05), lerp(camHeight, cameraHeight, 0.05));
}

// Get In-between player and camera
if (target != noone) {
	
	if (distance_to_point(mouse_x, mouse_y) < 1) {
		exit;	// Only run if not trying to move towards itself
	}
	
	switch(state) {
		case cameraState.followPlayer:
			target = oPlayerBody; 
			x = lerp(x, mean(mean(mouse_x, target.x), target.x), 0.1);
			y = lerp(y, mean(mean(mouse_y, target.y-yOffset), target.y-yOffset), 0.1);
			break;
		
		case cameraState.followSpear:
			target = oPlayerWeapon;
			var _dir = point_direction(x, y, mouse_x, mouse_y);
			var _len = 32;
			var _x = lengthdir_x(_len, _dir);
			var _y = lengthdir_x(_len, _dir);
			x = mean(mean(mouse_x, target.x + _x), target.x + _x);
			y = mean(mean(mouse_y, target.y + _y - yOffset), target.y + _y - yOffset);
			break;
			
		case cameraState.stagger:
			target = oPlayerBody;
			target2 = oPlayerController.spearLastObjectHit;
			
			if (instance_exists(target2)) {
				x = lerp(x, mean(target.x, target2.x), 0.05);
				y = lerp(y, mean(target.y-(yOffset/2), target2.y-(yOffset/2)), 0.05);
			} else {
				state = cameraState.followPlayer;
			}
			break;
	}
	
}






