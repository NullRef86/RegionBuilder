function GetSaveDataForObject(argument0) {
	var instance = argument0;

	var objectIndex = instance.object_index;

	// Set up the object's save data map, and load in core data
	var objectSaveDataMap = ds_map_create();
	//objectSaveDataMap[?"object_index"] = objectIndex;
	objectSaveDataMap[?"object_name"] = object_get_name(objectIndex);
	objectSaveDataMap[?"layer"] = instance.layer;

	// Loop through each of the defined properties for this object type
	var propertyArray = global.SaveConfiguration[?objectIndex];

	for (var i = 0; i < array_length_1d(propertyArray); i++)
	{
		var propertyName = propertyArray[i];
	
		// For list properies...
		if (string_char_at(propertyName, 0) == "|")
		{
			var actualPropertyName = string_replace(propertyName, "|", "");
		
			// Load the list
			var listValue = variable_instance_get(instance, actualPropertyName);
	
			// Write it as a string
			var writtenListValue = ds_list_write(listValue);
	
			// Storing the written string
			objectSaveDataMap[?propertyName] = writtenListValue;
		}
		// For normal properties
		else
		{	
			// Get the value
			var propertyValue = variable_instance_get(instance, propertyName);
	
			// Store as is
			objectSaveDataMap[?propertyName] = propertyValue;
		}
	}

	return objectSaveDataMap;


}
