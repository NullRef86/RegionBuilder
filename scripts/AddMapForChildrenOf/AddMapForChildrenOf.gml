var parentIndex = argument0;
var buildingConfig = argument1;

var i = 0;
while (true)
{
	if (object_get_name(i) == "<undefined>")
	{
		break;	
	}
		
	if (object_is_ancestor(i, parentIndex))
	{
		global.SaveConfiguration[?i] = buildingConfig;
	}
		
	i++;
}
