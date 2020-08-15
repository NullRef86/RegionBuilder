var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
	
if (_isPickedUp)
{
	x = mouseX - (sprite_get_width(sprite_Card) / 2);
	y = mouseY - (sprite_get_height(sprite_Card) / 2);
	depth = 0;
}

if (_isMousePressedLeft)
{
	_isMousePressedLeft = false;
	_isPickedUp = true;
	Say(id, "I was clicked (Layer: " + string(layer) + ", Depth: " + string(depth) + ")");
}

if (_isMouseReleasedLeft)
{
	_isMouseReleasedLeft = false;
	_isPickedUp = false;
	depth = 1;

	var offscreenPosition = -1000;

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
			
	SaveGame();
}