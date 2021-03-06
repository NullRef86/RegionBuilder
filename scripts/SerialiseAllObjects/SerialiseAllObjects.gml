function SerialiseAllObjects() {
	var allObjectList = ds_list_create();

	// For each object
	with (all)
	{
		// If there is config defined for this object type
		if (ds_map_exists(global.SaveConfiguration, object_index))
		{
			// Get the data to be saved for this object
			var objectSaveDataMap = GetSaveDataForObject(id);
		
			// Add it to the list of all objects
			ds_list_add(allObjectList, objectSaveDataMap);
			ds_list_mark_as_map(allObjectList, ds_list_size(allObjectList) - 1);
		}
	}

	// Create root map
	var allObjectsMap = ds_map_create();

	// Serialise all the card lists
	ds_map_add_list(allObjectsMap, "DrawDeck", SerialiseCardList(global.DrawDeck));
	ds_map_add_list(allObjectsMap, "DiscardPile", SerialiseCardList(global.DiscardPile));
	ds_map_add_list(allObjectsMap, "Hand", SerialiseCardList(global.Hand));

	var logCopy = ds_list_create();
	ds_list_copy(logCopy, global.Log);
	ds_map_add_list(allObjectsMap, "Log", logCopy);

	ds_map_add(allObjectsMap, "CurrentGold", global.CurrentGold);

	// Add the list as a single value under "root"
	ds_map_add_list(allObjectsMap, "AllObjects", allObjectList);

	// Convert to JSON, dispose of the map, and return JSON
	var json = json_encode(allObjectsMap);

	ds_map_destroy(allObjectsMap);

	return json;


}
