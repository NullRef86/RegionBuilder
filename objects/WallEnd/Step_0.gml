/// @desc ???
if (_isPickedUp)
{
	x = mouse_x;
	y = mouse_y;
}


var listCopy = ds_list_create();

ds_list_copy(listCopy, _connectionUuids);

// For each of my wall ends	
for (var i = 0; i < ds_list_size(listCopy); i++)
{
	// Get the other wall end
	var otherWallEnd = GetWallEndByUuid(listCopy[|i]);
	
	if (otherWallEnd != undefined)
	{
		// Wall exists, skip over...
		continue;
	}
	
	Say(_uuid, "Deleting a non-existant wall end.");
	ds_list_delete(_connectionUuids, i);
}