/// @desc Pick-up or Drop / Paint
if (IsOutOfView())
{
	return;	
}

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
	
	return;
}

if (global.CurrentBrush != undefined)
{	
	// Don't want to pick up if painting
	return;	
}

// If Alt is held then we want to upgrade the wall
if (keyboard_check(vk_alt))
{
	_level++;
	
	if (_level > 2)
	{
		_level = 1;	
	}
	
	return;
}
	
// If all else fails, clear brush and pick up
ClearBrush();	
_isPickedUp = true;
	