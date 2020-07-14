/// @desc Clear brush or select colour
if (keyboard_check(vk_control))
{
	instance_destroy();
	return;
}

show_debug_message("Setting RightClickHandled: true...");
global.RightClickHandled = true;

if (_isPickedUp)
{
	ClearBrush();
	
	_isPickedUp = false;
	global.EditingSettlement = undefined;
}
else
{
	global.EditingSettlement = self;
	ClearUiElements();
	instance_create_layer(x, y, "PaletteLayer", ColourPicker);
}
