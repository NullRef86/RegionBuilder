/// @desc Build colours

AddUiElement(self);

var colours = [c_red, c_green, c_blue, c_yellow, c_purple, c_orange, c_teal, c_dkgray];

var startX = x - 96;
var startY = y + 64;
var verticalSpacing = 64;
var horizontalSpacing = 48;

var currentX = startX;
var currentY = startY;

for(var i = 0; i < array_length_1d(colours); i++)
{
	var option = instance_create_layer(currentX, currentY, "PaletteLayer", ColourPickerOption);
	with(option)
	{
		_colour = colours[i];
	}
	AddUiElement(option);
	
	currentX += verticalSpacing;
	
	if (i == 3)
	{
		currentX = startX;
		currentY += horizontalSpacing;
	}
}