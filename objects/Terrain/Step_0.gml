/// @desc Follow mouse, and paint or delete based on input
if (_isPainting)
{
	x = mouse_x;
	y = mouse_y;
		
	if (IsOutOfView())
	{
		return;	
	}
	
	// If left clicking
	if (mouse_check_button(mb_left))
	{
		// Loop through all terrain...
		var freeToPaint = true;		
		with ResourceType
		{
			// If the other terrain is different to this (the brush)...
			if (id != other.id)
			{
				// Check the distance...
			    t = point_distance(x, y, other.x, other.y);				
				// And if it's below a threshold...
				if (t <= (_duplicateSafezoneRange * DuplicateSafezoneModifier)) 
				{
					// Then don't allow painting.
					freeToPaint = false;	
					break;
				}
			}
		}
	
		if (freeToPaint)
		{
			// Drop this
			_isPainting = false;
		
			// Create a copy of this to put in the brush		
			var terrain = instance_copy(true);
			with (terrain)
			{
				_isPainting = true;	
			}		
			global.CurrentBrush = terrain;
		
			// Set this to be in the appropriate layer
			layer = layer_get_id(TargetLayerId);		
		}
	}
}

// If control is held, AND right mouse is clicked, AND this terrain is hovered,
// AND is done deleting, THEN delete
if (keyboard_check(vk_control) &&
	mouse_check_button(mb_right) && 
	_isHovered &&
	global.IsDoneDeleting)
{	
	instance_destroy();
	
	// If shift is also held, then don't stop deleting
	if (!keyboard_check(vk_shift))
	{
		global.IsDoneDeleting = false;
	}
}