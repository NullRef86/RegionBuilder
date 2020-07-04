/// @desc Setup variables
_isPickedUp = false;

_settlementName = get_string("Enter settlement name:", "");

if (_settlementName == "")
{
	instance_destroy();
}

image_blend = make_color_rgb(200, 0, 0);