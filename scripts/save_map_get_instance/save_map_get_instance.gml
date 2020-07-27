var map = argument0;

var object = map[?"object_index"];
var _layer = map[?"layer"];

var instance = instance_create_layer(0, 0, _layer, object);

var var_array = global.save_map[?object];

for (var i = 0; i < array_length_1d(var_array); i++)
{
	var name = var_array[i];
	var value = map[?name];
	
	if (string_char_at(name, 0) == "|")
	{
		var actualPropertyName = string_replace(name, "|", "");
		
		var list = ds_list_create();
		
		ds_list_read(list, value);
		
		variable_instance_set(instance, actualPropertyName, list);	
	}
	else
	{	
		variable_instance_set(instance, name, value);	
	}	
}