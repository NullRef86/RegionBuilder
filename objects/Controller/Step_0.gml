if (mouse_check_button_pressed(mb_right))
{
	show_debug_message("");
}

var hoveredObjects = ds_list_create();

with(all)
{
	// Get the sprite index, for collision
	var spriteIndex = sprite_index;	
	if (spriteIndex == -1)
	{		
		// If there's no sprite index, get the mask index (e.g. the cards)
		spriteIndex = mask_index;
	}
	if (spriteIndex == -1)
	{
		// If there's still no sprite for collision, then we're not interested in checking this object
		continue;
	}
	
	// Get sprite parameters, assuming it's a top-left origin sprite.
	var spriteHeight = sprite_get_height(spriteIndex);
	var spriteWidth = sprite_get_width(spriteIndex);		
	var spriteLeft = x;
	var spriteRight = x + spriteWidth;
	var spriteTop = y;
	var spriteBottom = y + spriteHeight;
	
	// Get mouse positions
	var mouseX = mouse_x;
	var mouseY = mouse_y;
	
	if (_isUiElement)
	{
		// However, if it's a GUI element, then we want the GUI mouse position
		mouseX = device_mouse_x_to_gui(0);
		mouseY = device_mouse_y_to_gui(0);
	}
	else
	{
		// For non-GUI elements, update the sprite parameters to be for centre origin sprite (as
		// "normal" objects tend to use this origin method).
		spriteLeft -= spriteWidth / 2;
		spriteTop -= spriteHeight / 2;
		spriteRight -= spriteWidth / 2;
		spriteBottom -= spriteHeight / 2;
	}
	
	if (image_angle != 0)
	{
		// If the object is rotated, perform a projection transformation on the mouse cursor, so 
		// that a normal "point_in_rectangle" check can take place.
		var degrees = degtorad(image_angle);
		
		var projectedX = 
			x + 
			((mouseX - x) * cos(degrees)) - 
			((mouseY - y) * sin(degrees));
		
		var projectedY = 
			y +
			((mouseY - y) * cos(degrees)) +
			((mouseX - x) * sin(degrees));
			
		mouseX = projectedX;
		mouseY = projectedY;
	}
		
	_isHovered = false;
		
	if (!point_in_rectangle(mouseX, mouseY, spriteLeft, spriteTop, spriteRight, spriteBottom))
	{
		// Not hovered, and therefore, we no longer are interested in this object
		continue;
	}
	
	if (ds_list_size(hoveredObjects) == 0)
	{
		// Add as the first
		ds_list_add(hoveredObjects, self);
	}
	else
	{
		// If the first is deeper than this, then insert this to the top of the list
		if (hoveredObjects[|0].depth > depth)
		{
			ds_list_insert(hoveredObjects, 0, self);
		}
		else
		{
			// Else, just add it to the bottom
			ds_list_add(hoveredObjects, self);
		}
	}
}

var hoveredObjectsLength = ds_list_size(hoveredObjects);

if (hoveredObjectsLength > 0)
{
	var isTopMostObjectAllowingClickPassthrough = hoveredObjects[|0]._allowClickPassthrough;

	// For each of the hovered objects...
	for (var i = 0; i < hoveredObjectsLength; i++)
	{	
		var hoveredObject = hoveredObjects[|i];
	
		if (i > 0 && !hoveredObject._allowClickPassthrough)
		{
			// If we're looking at an object other than the top most, and it doesn't allow click
			// passthrough, then we should just skip to other elements that may have passthrough
			continue;
		}
	
		// Do the processing on the hovered object	
		hoveredObject._isHovered = true;
	
		if (mouse_check_button_pressed(mb_left))
		{
			hoveredObject._isMousePressedLeft = true;
		}
		if (mouse_check_button_released(mb_left))
		{
			hoveredObject._isMouseReleasedLeft = true;
		}
	
		if (mouse_check_button_pressed(mb_right))
		{
			hoveredObject._isMousePressedRight = true;
		}
		if (mouse_check_button_released(mb_right))
		{
			hoveredObject._isMouseReleasedRight = true;
		}
	
		if (!isTopMostObjectAllowingClickPassthrough)
		{
			// If the top object isn't doing click passthrough, then we don't need to loop any further
			break;
		}
	}
}