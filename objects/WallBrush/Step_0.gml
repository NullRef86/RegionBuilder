/// @desc ???
if (mouse_check_button_pressed(mb_right))
{
	_isPainting = false;
}

if (mouse_check_button_pressed(mb_left) && _isPainting)
{	
	var wallEnd = instance_create_layer(mouse_x, mouse_y, "BuildingLayer", WallEnd);
		
	var position = [mouse_x, mouse_y, wallEnd];
	
	ds_list_add(global.WallPoints, position);
	
}