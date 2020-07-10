// @desc
var startX = 138;
var startY = 6;
var verticalSpacing = 20;
	
if (_toggleUi)
{
	outputArray =
	[
		//"Mouse position: [" + string(device_mouse_x_to_gui(0)) + ":" + string(device_mouse_y_to_gui(0)) + "]",
		//"",
		//"Is Painting: " + string(global.CurrentBrush != undefined ? "True" : "False"),
		"Is Done Deleting: " + string(global.IsDoneDeleting == 1 ? "True" : "False"),
		"",
		"Brush layer count: " + string(array_length_1d(layer_get_all_elements("BrushLayer"))),
		"Building layer count: " + string(array_length_1d(layer_get_all_elements("BuildingLayer"))),
		"Road layer count: " + string(array_length_1d(layer_get_all_elements("RoadLayer"))),
		"Terrain layer count: " + string(array_length_1d(layer_get_all_elements("TerrainLayer"))),
		"Instance count: " + string(instance_count),
		//"",
		//"Temp UI count: " + string(array_length_1d(global.TemporaryUiElements))
	];

	for (var i = 0; i < array_length_1d(outputArray); i++;)
	{
		draw_text(startX, startY + (verticalSpacing * i), outputArray[i]);
	}
}
else
{
	var tempQueue = ds_queue_create();

	ds_queue_copy(tempQueue, global.DrawDeck);

	for (var i = 0; i < ds_queue_size(global.DrawDeck); i++)
	{
		draw_text(startX, startY + (verticalSpacing * i), ds_queue_dequeue(tempQueue));
	}
}

if (global.CurrentAction != undefined)
{
	draw_text(startX, view_hport[0] - 32, global.CurrentAction);
}

draw_sprite(sprite_PaletteBackground, 0, 0, 0);

paletteButtons = 
[
	[Settlement, $912D66],
	[0],
	[House, $2265F2],
	[Chapel, $2265F2],
	[Church, $2265F2],
	[Cathedral, $2265F2],
	[0],
	[Shop, $00A0AB],
	[Tavern, $00A0AB],
	[Market, $00A0AB],
	[0],
	[Water, $BC7200],
	[Forest, $307B19],
	[HillsLevel1, $2A4F26, "Hills (Lv.1)"],
	[HillsLevel2, $274924, "Hills (Lv.2)"],
	[HillsLevel3, $244421, "Hills (Lv.3)"],
	[HillsLevel4, $1E3A1C, "Hills (Lv.4)"],
	[Mountains, $707070],
	[Cliff, $7D7D7D],
	[0],
	[Road, $0D41A0],
];

var startX = 5;
var startY = 5;
var currentY = startX;
var buttonHeight = sprite_get_height(sprite_PaletteButton);
var horizontalSpacing = 5;
var spacerSize = 10;

for (i = 0; i < array_length_1d(paletteButtons); i++)
{
	var paletteButton = paletteButtons[i];

	if (paletteButton[0] == 0)
	{
		currentY += spacerSize;	
		continue;
	}

	var buttonText = undefined;
	
	if (array_length_1d(paletteButton) > 2)
	{
		buttonText = paletteButton[2];
	}

	CreatePaletteButton(startX, currentY, paletteButton[0], paletteButton[1], buttonText);
	currentY += buttonHeight + horizontalSpacing;
}
