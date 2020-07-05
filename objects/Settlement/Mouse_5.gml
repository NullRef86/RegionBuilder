/// @desc Clear brush or select colour
if (keyboard_check(vk_control))
{
	instance_destroy();
	return;
}

if (_isPickedUp)
{
	ClearBrush();
	
	_isPickedUp = false;
	global.EditingSettlement = undefined;
}
else
{
	global.EditingSettlement = self;
	instance_create_layer(x, y, "PaletteLayer", ColourPicker);
}
