/// @desc Setup global variables
global.CurrentBrush = undefined;
global.EditingSettlement = undefined;
global.TemporaryUiElements = [];
global.CurrentAction = undefined;
global.IsDoneDeleting = true;
global.LeftClickHandled = false;
global.RightClickHandled = false;

global.CurrentSave = "Test01.json";

randomize();

SetupDeck();

LoadGame();

//var screenWidth = 1600;
//var screenHeight = 900;

//camera_set_view_size(view_camera[0], screenWidth, screenHeight);
//window_set_size(screenWidth, screenHeight);

//// Load some font
//if (os_type == os_windows || os_type == os_win32 || os_type == os_win8native)
//    var _slash = "\\";
//else
//    var _slash = "/";
//var _resdir = working_directory + _slash + "Fonts" + _slash; 
//var _path = _resdir  + "gothic-pixel-font.ttf";
//show_debug_message("Loading from ... " + string(_path));

//fontGothicPixel = font_add(FontUI, 15, false, false, 32, 128);

draw_set_font(FontUI);

zoom_level = 1;

//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);

//game_load("Hills.region");