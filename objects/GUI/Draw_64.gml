// @desc

draw_text(700, 5, "FPS = " + string(fps));

var startX = 138;
var startY = 6;
var verticalSpacing = 20;
	
switch(_uiMode)
{
	case 0:
		outputArray =
		[
			//"Mouse position: [" + string(device_mouse_x_to_gui(0)) + ":" + string(device_mouse_y_to_gui(0)) + "]",
			//"",
			//"Is Painting: " + string(global.CurrentBrush != undefined ? "True" : "False"),
			//"Is Done Deleting: " + string(global.IsDoneDeleting == 1 ? "True" : "False"),
			"Current brush: " + string(global.CurrentBrush),
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
		break;
	case 1:	
		var tempQueue = ds_queue_create();

		ds_queue_copy(tempQueue, global.DrawDeck);

		for (var i = 0; i < ds_queue_size(global.DrawDeck); i++)
		{
			draw_text(startX, startY + (verticalSpacing * i), ds_queue_dequeue(tempQueue));
		}
		break;
	case 2:
		//for (var i = 0; i < ds_list_size(global.WallPoints); i++;)
		//{
		//	var position = ds_list_find_value(global.WallPoints, i);
		
		//	var text = "Undefined";
			
		//	if (position != undefined)
		//	{
		//		text = "[" + string(position[0]) + ":" + string(position[1]) + "]";		
		//	}
			
		//	draw_text(startX, startY + (verticalSpacing * i), text);
		//}
		break;
}

if (global.CurrentAction != undefined)
{
	draw_text(startX, view_hport[0] - 32, global.CurrentAction);
}

draw_sprite(sprite_PaletteBackground, 0, 0, 0);

paletteButtons = 
[
	[Road, $0D41A0],
	[0],
	[WallEnd, $082966, "Wall"],
	[OutpostTower, $082966, "Outpost Twr."],
	[Barracks, $082966],
	[Weaponsmith, $082966],
	[Armoursmith, $082966],
	[Barracks, $082966],
	[MeetingHall, $082966],
	[Keep, $707070],
	[Castle, $707070],
	[Palace, $912D66],	
	[0],
	[House, $2265F2],
	[Chapel, $2265F2],
	[Church, $2265F2],
	[Cathedral, $2265F2],
	[0],
	[Shop, $00A0AB],
	[Tavern, $00A0AB],
	[Market, $00A0AB],
	[Library, $A96085],
	[Academy, $A96085],
	[0],
	[Water, $BC7200],
	[Forest, $307B19],
	[HillsLevel1, $2A4F26, "Hills (Lv.1)"],
	[HillsLevel2, $274924, "Hills (Lv.2)"],
	[HillsLevel3, $244421, "Hills (Lv.3)"],
	[HillsLevel4, $1E3A1C, "Hills (Lv.4)"],
	[Mountains, $707070],
	[Cliff, $7D7D7D],
	[Desert, $89C6FD],
	[0],
	[Farm, $568EF7],
	[FarmWheat, $53C4CC, "Farm (Wheat)"],
	[FarmPasture, $78B83C, "Farm (Past.)"],
	[Watermill, $082966],
	[Fishery, $082966],
	[WoodCutter, $082966, "Wood Cutter"],
	[Quarry, $707070],
	[Mine, $707070],
	[LumberYard, $082966, "Lumber Yard"],
	[Windmill, $082966],
	[AnimalProcessing, $082966, "Animal Proc."],
	[RepairerYard, $082966, "Repair Yard"],
	[0],
	[Settlement, $912D66],
	[TradeRoute, $1D94F8, "Trade Route"],
];

var startX = 5;
var startY = 5 + _scrollPositionY;
var currentY = startY;
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
