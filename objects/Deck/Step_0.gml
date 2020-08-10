/// @desc ???

var spriteName = sprite_Card;
var spriteHeight = sprite_get_height(spriteName);
var spriteWidth = sprite_get_width(spriteName);
var spriteLeft = x;
var spriteRight = x + spriteWidth;
var spriteTop = y;
var spriteBottom = y + spriteHeight;
var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

// Is the mouse on the deck?
if (point_in_rectangle(mouseX, mouseY, spriteLeft, spriteTop, spriteRight, spriteBottom))
{
	// Hovered
	if (_isPickedUp)
	{
		_isHovered = false;
	}
	else
	{
		_isHovered = true;
	}
	
    if (mouse_check_button_pressed(mb_left))
	{
		DrawCard(_cardList);
	}
}
else
{
	// Not hovered	
	_isHovered = false;
}