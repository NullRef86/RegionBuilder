/// @desc Pick-up or Drop / Paint
if (mouse_x <= 128)
{
	return;	
}

if (_isPickedUp)
{
	show_debug_message("Dropped...");
	_isPickedUp = false;
	
	if (global.CurrentBrush != undefined)
	{
		show_debug_message("Creating new for paint...");
		
		global.CurrentBrush = instance_copy(true);
	}
}
else
{
	show_debug_message("Picked up...");
	
	ClearBrush();
	
	_isPickedUp = true;
}