/// @desc Render UI

outputArray[0] = "Is Painting: " + string(global.CurrentBrush != undefined ? "True" : "False");
outputArray[1] = "Brush layer count: " + string(array_length_1d(layer_get_all_elements("BrushLayer")));
outputArray[2] = "Building layer count: " + string(array_length_1d(layer_get_all_elements("BuildingLayer")));
outputArray[3] = "Road layer count: " + string(array_length_1d(layer_get_all_elements("RoadLayer")));
outputArray[4] = "Terrain layer count: " + string(array_length_1d(layer_get_all_elements("TerrainLayer")));
outputArray[5] = "Instance count: " + string(instance_count);

var startX = 138;
var startY = 6;
var verticalSpacing = 20;

for (var i = 0; i < array_length_1d(outputArray); i++;)
{
	draw_text(startX, startY + (verticalSpacing * i), outputArray[i]);
}