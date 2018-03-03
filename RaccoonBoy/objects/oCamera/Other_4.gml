//Turn on the use of views
view_enabled = true;
view_visible[0] = true;

//Create a camera and instruct it to follow the player
FullscreenCamera = camera_create_view(0, 0, global.game_width, global.game_height, 0, oPlayer, -1, -1, global.game_width, global.game_height);

//Set the view to use our new camera
view_set_camera(view_current, FullscreenCamera);


//Instruct the camera to render to the surface
view_set_surface_id(0, surf);


