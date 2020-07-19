/// @desc ???

for (var i = 0; i < ds_list_size(global.WallPoints); i++;)
{
	var wallPoint = ds_list_find_value(global.WallPoints, i);
	
	if (wallPoint == undefined)
	{
		continue;	
	}
	
	var target = [];
	
	if ((i + 1) >= ds_list_size(global.WallPoints))
	{
		if (_isPainting)
		{
			target = [mouse_x, mouse_y];
		}
		else
		{
			continue;
		}		
	}
	else
	{
		target = ds_list_find_value(global.WallPoints, i + 1);
	}
	
	if (target == undefined)
	{
		continue;	
	}
	
	var colour = $0D41A0;
	
	draw_line_width_color(wallPoint[0], wallPoint[1], target[0], target[1], 5, colour, colour);
}