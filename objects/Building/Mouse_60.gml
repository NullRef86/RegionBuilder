/// @desc Rotate (Anti-clockwise)
if (!keyboard_check(vk_control))
{
	return;
}

if (_isPickedUp)
{
	image_angle += 10;	
}