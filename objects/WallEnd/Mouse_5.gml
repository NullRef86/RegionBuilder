/// @desc Clear brush
ClearBrush();
_isPickedUp = false;

// If control is held and done deleting, then delete
if (keyboard_check(vk_control) &&
	global.IsDoneDeleting)
{
	instance_destroy();	
	
	// If shift is also held, then don't stop deleting
	if (!keyboard_check(vk_shift))
	{
		global.IsDoneDeleting = false;
	}
}
else
{
	_isRuined = !_isRuined;	
}