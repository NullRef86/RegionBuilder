/// @desc Follow mouse, and paint or delete based on input
if (_isPainting)
{
	x = mouse_x;
	y = mouse_y;
	
	// If left clicking
	if (mouse_check_button(mb_left))
	{
		// Loop through all terrain...
		var freeToPaint = true;		
		with Terrain
		{			
			// If the other terrain is different to this (the brush)...
			if (id != other.id)
			{
				// Check the distance...
			    t = point_distance(x, y, other.x, other.y);				
				// And if it's below a threshold...
				if (t <= 1) 
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

if (mouse_check_button(mb_right) && _isHovered)
{	
	instance_destroy();
}