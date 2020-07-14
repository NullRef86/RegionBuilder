/// @desc Pick-up or Drop / Paint
if (_isPickedUp)
{
	// Drop this
	_isPickedUp = false;
	global.EditingSettlement = undefined;
	
	// If painting (as opposed to moving)
	if (global.CurrentBrush != undefined)
	{
		global.CurrentBrush = undefined;
		
		// Set this to be in the building layer
		layer = layer_get_id("BuildingLayer");		
	}
}
else
{
	if (IsCurrentBrush(TradeRoute))
	{
		_isPartOfTradeRoute = !_isPartOfTradeRoute;
	}
	else
	{
		ClearBrush();	
		_isPickedUp = true;
	}
}