/// @desc Pick-up or Drop / Paint
if (IsOutOfView() || global.LeftClickHandled)
{
	return;	
}

global.LeftClickHandled = true;

// If currently painting WallEnd, and I'm not the brush, then attach rather than paint.
if (IsCurrentBrush(WallEnd) && global.CurrentBrush != self)
{
	// Get current brushes connected wall (I'm going to assume only one for now)...
	var connectedWall = ds_list_find_value(global.CurrentBrush._connectedWallEnds, 0);

	if (connectedWall != undefined)
	{
		// Add that connected wall to this wall
		ds_list_add(_connectedWallEnds, connectedWall);
	
		// And also, make sure the other wall is connected to this
		ds_list_add(connectedWall._connectedWallEnds, self);
	
		// Clear the brush
		ClearBrush();
	}
	else
	{		
		// If no wall is in the brush, then we're likely painting anew, so we need to 
		// attach this to the brush?
		ds_list_add(global.CurrentBrush._connectedWallEnds, self);		
	}
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
		var wallEnd = instance_copy(true);
		with (wallEnd)
		{
			_isPickedUp = true;				
		}		
		
		// Add this wall end to the new one
		ds_list_add(wallEnd._connectedWallEnds, self);
		
		// Add the new wall end to this wall ends connected
		ds_list_add(_connectedWallEnds, wallEnd);
		
		global.CurrentBrush = wallEnd;
		
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

//for (var i = 0; i < ds_list_size(_connectedWallEnds); i++;)
//{
	
//}