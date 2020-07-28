gml_pragma("global", "InitSaveConfiguration();");

global.SaveConfiguration = ds_map_create();

global.SaveConfiguration[?WallEnd] = ["x", "y", "_uuid", "_isRuined", "_wallLevel", "|_connectionUuids"];
global.SaveConfiguration[?Settlement] = ["x", "y", "_settlementName", "_colour", "_isPartOfTradeRoute"];

AddMapForChildrenOf(Building, ["x", "y", "image_angle", "_isRuined"]);
AddMapForChildrenOf(Terrain, ["x", "y", "_roadLevel"]);