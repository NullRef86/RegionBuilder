/// @desc ???


for (var i = 0; i < ds_list_size(global.WallPoints); i++;)
{
	var wallPoint = ds_list_find_value(global.WallPoints, i);
	
	if (wallPoint == undefined || wallPoint[2] != self)
	{
		continue;	
	}
	
	ds_list_set(global.WallPoints, i, undefined);
	//ds_list_delete(global.WallPoints, i);
	break;
}