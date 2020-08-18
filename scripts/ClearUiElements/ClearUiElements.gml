/// @description ClearUiElements()
/// @function AddUiElement
function ClearUiElements() {
	//
	// [TODO]

	//show_debug_message("Clearing all temporary UI elements...");

	for (var i = 0; i < array_length_1d(global.TemporaryUiElements); i++)
	{
		instance_destroy(global.TemporaryUiElements[i]);
	}

	global.TemporaryUiElements = [];


}
