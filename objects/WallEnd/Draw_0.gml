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

image_index = _wallLevel -1;

for (var i = 0; i < ds_list_size(_connectedWallEnds); i++;)
{		
	var otherWallEnd = ds_list_find_value(_connectedWallEnds, i);
	
	var a = (otherWallEnd.y - y);
	var b = (otherWallEnd.x - x);
	
	var scaleX = sqrt(sqr(a) + sqr(b)) / 2;
	
	var m = a / b;
	
	var radians = arctan(m);
	
	var degrees = radtodeg(radians) * -1;
	
	draw_sprite_ext(sprite_WallMiddle, image_index, x, y, scaleX * (b / abs(b)), 1, degrees, c_white, 1);
}

draw_self();

if (keyboard_check(ord("I")))
{
	draw_text(x, y, string(id) + " - Lv." + string(_wallLevel));
}
