var objectSaveDataMap = argument0;

// Instantiate a new object using the object core save data
var objectIndex = objectSaveDataMap[?"object_index"];
var objectLayer = objectSaveDataMap[?"layer"];
var instance = instance_create_layer(0, 0, objectLayer, objectIndex);

// Loop through each of the defined properties for this object type
var propertyArray = global.SaveConfiguration[?objectIndex];

for (var i = 0; i < array_length_1d(propertyArray); i++)
{
	var propertyName = propertyArray[i];
	var propertyValue = objectSaveDataMap[?propertyName];
	
	// For list properies...
	if (string_char_at(propertyName, 0) == "|")
	{
		var actualPropertyName = string_replace(propertyName, "|", "");
		
		// Create a new list using the string data from the property
		var list = ds_list_create();		
		ds_list_read(list, propertyValue);
		
		// And update the list property on the new object
		variable_instance_set(instance, actualPropertyName, list);	
	}
	// For normal properties
	else
	{
		// Store the value on the new object as is
		variable_instance_set(instance, propertyName, propertyValue);	
	}	
}