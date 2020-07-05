/// @description AddUiElement(elementToAdd)
/// @function AddUiElement
/// @param elementToAdd
//
// [TODO]

//show_debug_message("Adding new UI element...");

var arrayLength = array_length_1d(global.TemporaryUiElements);

global.TemporaryUiElements[arrayLength] = argument0;

//for (var i = 0; i < array_length_1d(global.TemporaryUiElements); i++)
//{
//	show_debug_message("Open dialog: " + string(global.TemporaryUiElements[i].id));
//}

//show_debug_message("- Array length: " + string(array_length_1d(global.TemporaryUiElements)));