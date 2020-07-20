/// @desc ???
if (_isPickedUp)
{
	x = mouse_x;
	y = mouse_y;
}


var listCopy = ds_list_create();

ds_list_copy(listCopy, _connectedWallEnds);

// For each of my wall ends	
for (var i = 0; i < ds_list_size(listCopy); i++)
{
	// Get the other wall end
	var otherWallEnd = ds_list_find_value(listCopy, i);
	
	if (instance_exists(otherWallEnd))
	{
		continue;
	}
	
	Say(id, "Deleting a non-existant wall end.");
	ds_list_delete(_connectedWallEnds, i);
}