/// @desc Follow mouse, and paint or delete based on input
if (_isPainting)
{
	x = mouse_x;
	y = mouse_y;
	
	if (mouse_check_button(mb_left))
	{
		if (mouse_x <= 128)
		{
			return;	
		}

		var freeToPaint = true;
		
		with Terrain {
			
			if (id != other.id)
			{
			    t = point_distance(x, y, other.x, other.y);
				
				if (t <= 1) 
				{
					freeToPaint = false;	
					break;
				}
			}
		}
	
		if (freeToPaint)
		{
			_isPainting = false;
		
			if (global.CurrentBrush != undefined)
			{	
				global.CurrentBrush = instance_copy(true);
			}
		}
	}
}

if (mouse_check_button(mb_middle) && _isHovered)
{	
	instance_destroy();
}