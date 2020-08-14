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

if (_isPickedUp)
{
	x = mouseX - (sprite_get_width(sprite_Card) / 2);
	y = mouseY - (sprite_get_height(sprite_Card) / 2);
	depth = 0;
}

// Is the mouse on the deck?
if (!point_in_rectangle(mouseX, mouseY, spriteLeft, spriteTop, spriteRight, spriteBottom))
{
	// Not hovered	
	_isHovered = false;
	return;
}

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
	_isPickedUp = true;
}
if (mouse_check_button_released(mb_left))
{
	_isPickedUp = false;
	depth = 1;

	var offscreenPosition = -100;

	with (Deck)
	{
		if (position_meeting(mouseX, mouseY, id))
		{
			for (var i = 0; i < ds_list_size(global.Hand); i++)
			{
				var currentCard = global.Hand[|i];
				
				if (currentCard.object_index == other.object_index)
				{
					ds_list_delete(global.Hand, i);
					break;
				}
			}			
			
			ds_list_insert(_cardList, 0, other);
			
			other.x = offscreenPosition;
			other.y = offscreenPosition;
		}
	}
}