/// @desc Setup global variables
global.CurrentBrush = undefined;
global.EditingSettlement = undefined;
global.TemporaryUiElements = [];
global.CurrentAction = undefined;
global.IsDoneDeleting = true;

SetupDeck();

zoom_level = 1;

//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);

//game_load("Hills.region");