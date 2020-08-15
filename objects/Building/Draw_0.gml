/// @desc Apply blend (if hovered and/or ruined)

image_blend = c_white;

if (!_isPickedUp)
{
	if (_isHovered && _isRuined)
	{
		image_blend = c_gray;	
	}
	else if (_isHovered)
	{
		image_blend = c_ltgray;
	}
}

if (_isRuined)
{
	image_blend = c_dkgray;
}

draw_self();



