gml_pragma("global", "save_meta();");

global.save_map = ds_map_create();

global.save_map[?WallEnd] = ["x", "y", "_uuid", "_isRuined", "_wallLevel", "|_connectionUuids"];

var buildingConfig = ["x", "y", "image_angle", "_isRuined"];

var i = 0;
while (true)
{
	if (object_get_name(i) == "<undefined>")
	{
		break;	
	}
		
	if (object_is_ancestor(i, Building))
	{
		global.save_map[?i] = buildingConfig;
	}
		
	i++;
}

var buildingConfig = ["x", "y", "_roadLevel"];

var i = 0;
while (true)
{
	if (object_get_name(i) == "<undefined>")
	{
		break;	
	}
		
	if (object_is_ancestor(i, Terrain))
	{
		show_debug_message(object_get_name(i) + " is terrain.");
		global.save_map[?i] = buildingConfig;
	}
		
	i++;
}

global.save_map[?Settlement] = ["x", "y", "_settlementName", "_colour", "_isPartOfTradeRoute"];
