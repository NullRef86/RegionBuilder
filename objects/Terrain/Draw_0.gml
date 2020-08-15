/// @desc Apply blend (if hovered)

image_blend = c_white;

if (!_isPainting && _isHovered)
{
	image_blend = c_ltgray;
}

draw_self()
