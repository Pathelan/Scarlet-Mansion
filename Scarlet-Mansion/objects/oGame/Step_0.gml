/// @description Insert description here
// You can write your code in this editor

// Only Activate Objects that are on Screen.
instance_deactivate_all(true);
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_activate_region(_vx - 128, _vy - 128, _vw + 128, _vh + 256, true);

instance_activate_object(oPlayerController);
instance_activate_object(oPlayerBody);
instance_activate_object(oPlayerWeapon);
instance_activate_object(oCamera);
instance_activate_object(oParallax);
instance_activate_object(oCrosshair);
instance_activate_object(oParticleSystem);
instance_activate_object(oEnemySpawner);
instance_activate_object(oGUI);
