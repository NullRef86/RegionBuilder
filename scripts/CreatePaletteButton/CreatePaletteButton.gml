/// @description CreatePaletteButton(x, y, spriteName, paintableObject)
/// @function CreatePaletteButton
/// @param x
/// @param y
/// @param spriteName
/// @param paintableObject
//
// [TODO]

var positionX = argument0,
var positionY = argument1,
var spriteName = argument2;
var spriteHeight = sprite_get_height(spriteName);
var spriteWidth = sprite_get_width(spriteName);
var spriteLeft = positionX - (spriteWidth / 2);
var spriteRight = positionX + (spriteWidth / 2);
var spriteTop = positionY - (spriteHeight / 2);
var spriteBottom = positionY + (spriteHeight / 2);
var paintableObject = argument3;

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

var useHoverImage = interaction > 0;
	
draw_sprite_ext(spriteName, useHoverImage, positionX, positionY, 1, 1, 0, c_white, 1);

if (interaction == 2)
{
	ClearBrush();

	var paintableObject = instance_create_layer(mouse_x, mouse_y, "BrushLayer", paintableObject);
	with (paintableObject)
	{
		_isPickedUp = true;	
		_isPainting = true;
	}

	global.CurrentBrush = paintableObject;
}