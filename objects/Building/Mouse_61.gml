/// @desc Rotate (Clockwise)
if (!keyboard_check(vk_control))
{
	return;
}

if (_isPickedUp)
{
	image_angle -= 10;	
}