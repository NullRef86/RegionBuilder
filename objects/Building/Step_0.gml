/// @desc Follow mouse if picked up
if (_isPickedUp)
{
	x = mouse_x;
	y = mouse_y;
}

if (IsOutOfView())
{
	return;	
}

if (_isMousePressedLeft)
{
	_isMousePressedLeft = false;
		
	if (_isPickedUp)
	{
		// Drop this
		_isPickedUp = false;
	
		// If painting (as opposed to moving)
		if (global.CurrentBrush != undefined)
		{
			// Create a copy of this to put in the brush		
			var building = instance_copy(true);
			with (building)
			{
				_isPickedUp = true;	
			}		
			global.CurrentBrush = building;
		
			// Set this to be in the building layer
			layer = layer_get_id("BuildingLayer");		
		}
	}
	else
	{
		if (global.CurrentBrush != undefined)
		{	
			// Don't want to pick up if painting
			return;	
		}
	
		ClearBrush();	
		_isPickedUp = true;
	}
}

if (_isMousePressedRight)
{
	_isMousePressedRight = false;
		
	ClearBrush();
	_isPickedUp = false;

	_isRuined = !_isRuined;	
}
		
// If control is held and done deleting, then delete
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