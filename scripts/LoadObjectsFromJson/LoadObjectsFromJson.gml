function LoadObjectsFromJson(argument0) {
	var json = argument0;

	// For each object
	with (all) 
	{
		// If the object is of a type that is configured to be saved, destroy it
		if (ds_map_exists(global.SaveConfiguration, object_index))
		{		
			instance_destroy();
		}
	}

	// Deserialise json into a root map
	var allObjectsMap = json_decode(json);

	// Extract the objects list
	var allObjectList = allObjectsMap[?"AllObjects"];

	// For each object in the save data
	for (var i = 0; i < ds_list_size(allObjectList); i++)
	{
		// Create a new object using the stored data
		var objectSaveDataMap = allObjectList[|i];
		CreateObjectFromSaveData(objectSaveDataMap);
	}

	DeserialiseCardList(global.DrawDeck, allObjectsMap[?"DrawDeck"]);
	DeserialiseCardList(global.DiscardPile, allObjectsMap[?"DiscardPile"]);
	DeserialiseCardList(global.Hand, allObjectsMap[?"Hand"]);


}
