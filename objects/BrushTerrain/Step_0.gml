/// @desc Paint
x = mouse_x
y = mouse_y

if (!_isBrushPickedUp)
{
	return;	
}

if (mouse_check_button(mb_left))
{
	instance_create_layer(mouse_x, mouse_y, "TerrainLayer", Terrain);
}