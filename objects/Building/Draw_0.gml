/// @desc Apply blend (if ruined)

image_blend = c_white;

if (_isRuined)
{
	image_blend = c_dkgray;
}

draw_self()
