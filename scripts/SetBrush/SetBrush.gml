function SetBrush(argument0) {
	var paintableObject = argument0;

	var paintableObject = instance_create_layer(mouse_x, mouse_y, "BrushLayer", paintableObject);
	with (paintableObject)
	{
		_isPickedUp = true;	
		_isPainting = true;
	}

	global.CurrentBrush = paintableObject;


}
