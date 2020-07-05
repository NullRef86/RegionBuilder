/// @desc ???

if (_isHovered)
{
	draw_sprite(sprite_ColourPickerOptionHover, 0, x, y);
}

image_blend = _colour;

draw_self();
