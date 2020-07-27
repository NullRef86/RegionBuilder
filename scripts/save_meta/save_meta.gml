gml_pragma("global", "save_meta();");

global.save_map = ds_map_create();

global.save_map[?WallEnd] = ["x", "y", "_uuid", "|_connectionUuids"];