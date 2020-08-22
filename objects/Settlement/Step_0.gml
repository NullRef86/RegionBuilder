/// @desc Follow mouse if picked up
if (_isPickedUp)
{
	x = mouse_x;
	y = mouse_y;
}

if (_settlementName == "")
{
	_settlementName = get_string("Enter settlement name:", "Testington");
}

if (_isMousePressedLeft)
{
	_isMousePressedLeft = false;
	
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
}

if (_isMousePressedRight)
{
	_isMousePressedRight = false;
	
	if (keyboard_check(vk_control))
	{
		instance_destroy();
		return;
	}

	global.RightClickHandled = true;

	if (_isPickedUp)
	{
		ClearBrush();
	
		_isPickedUp = false;
		global.EditingSettlement = undefined;
	}
	else
	{
		global.EditingSettlement = self;
		ClearUiElements();
		instance_create_layer(x, y, "PaletteLayer", ColourPicker);
	}
	
}