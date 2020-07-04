/// @desc
draw_sprite(sprite_PaletteBackground, 0, 0, 0);

paletteButtons[0, 0] = sprite_PaletteHouse; 
paletteButtons[0, 1] = House;

paletteButtons[1, 0] = sprite_PaletteMarket;
paletteButtons[1, 1] = Market;

paletteButtons[2, 0] = sprite_PaletteRoad;
paletteButtons[2, 1] = Road;

paletteButtons[3, 0] = sprite_PaletteWater;
paletteButtons[3, 1] = Water;

paletteButtons[4, 0] = sprite_PaletteSettlement;
paletteButtons[4, 1] = Settlement;

var startX = 64;
var startY = 64;

for (i = 0; i < array_height_2d(paletteButtons); i++)
{
	CreatePaletteButton(startX, startY, paletteButtons[i, 0], paletteButtons[i, 1]);
	startY += 94;
}