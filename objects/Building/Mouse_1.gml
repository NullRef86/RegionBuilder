/// @desc Clear brush
ClearBrush();
_isPickedUp = false;

if (keyboard_check(vk_control))
{
	instance_destroy();
}