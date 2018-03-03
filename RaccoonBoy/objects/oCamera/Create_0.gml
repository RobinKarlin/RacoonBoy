//Set the port to whatever the display size might be
view_set_hport(0, display_get_height())
view_set_wport(0, display_get_width())

//Grab the window width/height from the viewport in the set-up room
global.window_width = view_get_wport(0);
global.window_height = view_get_hport(0);

//Set up dimensions for camera view and surface (divide by a higher number to zoom in further)
global.game_width = global.window_width / 2;
global.game_height = global.window_height / 2;

//Initialise the camera with nothing
FullscreenCamera = noone

//Create the surface
surf = surface_create(global.game_width, global.game_height);

//Now go to the main game room: This will skip the first room_start event (in the set-up room)
room = rMainMenu; 




