/// @desc Pick-up or Drop / Paint
if (mouse_x <= 128)
{
	// No action if in the palette zone
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
		global.CurrentBrush = instance_copy(true);
		
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