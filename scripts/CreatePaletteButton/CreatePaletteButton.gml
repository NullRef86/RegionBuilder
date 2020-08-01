/// @description CreatePaletteButton(x, y, paintableObject, buttonBlend, buttonText)
/// @function CreatePaletteButton
/// @param x
/// @param y
/// @param paintableObject
/// @param buttonBlend
/// @param buttonText
//
// [TODO]

var positionX = argument0,
var positionY = argument1,
var spriteName = sprite_PaletteButton;
var spriteHeight = sprite_get_height(spriteName);
var spriteWidth = sprite_get_width(spriteName);
var spriteLeft = positionX;
var spriteRight = positionX + spriteWidth;
var spriteTop = positionY;
var spriteBottom = positionY + spriteHeight;
var paintableObject = argument2;
var buttonBlend = argument3;
var buttonText = argument4;

var interaction = 0;
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), spriteLeft, spriteTop, spriteRight, spriteBottom))
{
	interaction = 1;
    if (mouse_check_button_pressed(mb_left))
	{
		interaction = 2;
	}
	if (mouse_check_button_pressed(mb_right))
	{ 
		interaction = 3; 
	}
}

var alpha = interaction > 0 ? 0.75 : 1;

if (buttonText = undefined)
{
	buttonText = object_get_name(paintableObject);;
}
	
draw_sprite_ext(spriteName, 1, positionX, positionY, 1, 1, 0, buttonBlend, alpha);
draw_set_color(c_black);
draw_text(positionX + 5, positionY, buttonText);
draw_set_color(c_white);

if (interaction == 2)
{
	ClearBrush();

	SetBrush(paintableObject);
}