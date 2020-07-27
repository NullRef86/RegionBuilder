/// @desc Follow mouse if picked up
if (_isPickedUp)
{
	x = mouse_x;
	y = mouse_y;
}

if (_settlementName == "")
{
	_settlementName = get_string("Enter settlement name:", "Testington")	
}