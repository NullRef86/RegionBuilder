/// @desc
//outputArray =
//[
//	//"Mouse position: [" + string(device_mouse_x_to_gui(0)) + ":" + string(device_mouse_y_to_gui(0)) + "]",
//	//"",
//	"Is Painting: " + string(global.CurrentBrush != undefined ? "True" : "False"),
//	"",
//	"Brush layer count: " + string(array_length_1d(layer_get_all_elements("BrushLayer"))),
//	"Building layer count: " + string(array_length_1d(layer_get_all_elements("BuildingLayer"))),
//	"Road layer count: " + string(array_length_1d(layer_get_all_elements("RoadLayer"))),
//	"Terrain layer count: " + string(array_length_1d(layer_get_all_elements("TerrainLayer"))),
//	"Instance count: " + string(instance_count),
//	//"",
//	//"Temp UI count: " + string(array_length_1d(global.TemporaryUiElements))
//];

//for (var i = 0; i < array_length_1d(outputArray); i++;)
//{
//	draw_text(startX, startY + (verticalSpacing * i), outputArray[i]);
//}


var tempQueue = ds_queue_create();

ds_queue_copy(tempQueue, global.DrawDeck);

var startX = 138;
var startY = 6;
var verticalSpacing = 20;

for (var i = 0; i < ds_queue_size(global.DrawDeck); i++)
{
	draw_text(startX, startY + (verticalSpacing * i), ds_queue_dequeue(tempQueue));
}

if (global.CurrentAction != undefined)
{
	draw_text(startX, view_hport[0] - 32, global.CurrentAction);
}

draw_sprite(sprite_PaletteBackground, 0, 0, 0);

paletteButtons = 
[
	[House, $2265F2],
	[Chapel, $2265F2],
	[Church, $2265F2],
	[Cathedral, $2265F2],
	[Market, $00A0AB],
	[Road, $0D41A0],
	[Water, $BC7200],
	[Settlement, $912D66]
];

var startX = 5;
var startY = 5;
var buttonHeight = sprite_get_height(sprite_PaletteButton);
var horizontalSpacing = 5;

for (i = 0; i < array_length_1d(paletteButtons); i++)
{
	var paletteButton = paletteButtons[i];
	
	CreatePaletteButton(startX, startY, paletteButton[0], paletteButton[1]);
	startY += buttonHeight + horizontalSpacing;
}
