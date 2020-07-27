var instance = argument0;

var object = instance.object_index;

var var_array = global.save_map[?object];

var map = ds_map_create();

map[?"object_index"] = object;
map[?"layer"] = instance.layer;

for (var i = 0; i < array_length_1d(var_array); i++)
{
	var name = var_array[i];
	
	if (string_char_at(name, 0) == "|")
	{
		var actualPropertyName = string_replace(name, "|", "");
		
		var value = variable_instance_get(instance, actualPropertyName);
	
		var write = ds_list_write(value);
	
		map[?name] = write;
	}
	else
	{	
		var value = variable_instance_get(instance, name);
	
		map[?name] = value;
	}
}

return map;