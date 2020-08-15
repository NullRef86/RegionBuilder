if (_isMousePressedLeft)
{
	_isMousePressedLeft = false;
	
	global.EditingSettlement._colour = _colour;

	ClearUiElements();
}