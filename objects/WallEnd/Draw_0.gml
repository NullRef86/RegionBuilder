/// @desc ???

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

for (var i = 0; i < ds_list_size(_connectedWallEnds); i++;)
{		
	var otherWallEnd = ds_list_find_value(_connectedWallEnds, i);
	
	var colour = $0D41A0;
	draw_line_width_color(x, y, otherWallEnd.x, otherWallEnd.y, 5, colour, colour);
}

draw_self();

draw_text(x, y, id);
