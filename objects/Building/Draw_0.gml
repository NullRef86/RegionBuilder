/// @desc Apply blend (if hovered and/or ruined)

image_blend = c_white;

if (_isHovered && _isRuined)
{
	image_blend = c_gray;	
}
else if (_isHovered)
{
	image_blend = c_ltgray;
}
else if (_isRuined)
{
	image_blend = c_dkgray;
}

draw_self()
