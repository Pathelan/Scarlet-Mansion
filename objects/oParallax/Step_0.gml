/// @description Parallax

var camX = camera_get_view_x(view_camera[0]);
var camY = camera_get_view_y(view_camera[0]);

layer_x("Background", camX*.25);
layer_y("Background", camY*.025);






