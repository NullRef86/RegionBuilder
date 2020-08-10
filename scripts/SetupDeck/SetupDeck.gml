#macro suit_hearts "Hearts"
#macro suit_diamonds "Diamonds"
#macro suit_spades "Spades"
#macro suit_clubs "Clubs"
#macro value_2     "2"
#macro value_3     "3"
#macro value_4     "4"
#macro value_5     "5"
#macro value_6     "6"
#macro value_7     "7"
#macro value_8     "8"
#macro value_9     "9"
#macro value_10    "10"
#macro value_jack  "J"
#macro value_queen "Q"
#macro value_king  "K"
#macro value_ace   "A"

var offscreenPosition = -1000;

show_debug_message("Setting up deck...");

var layerId = "CardLayer";

ds_list_add(
	global.DrawDeck,

	instance_create_layer(offscreenPosition, offscreenPosition, layerId, Hearts2),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, Hearts3),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, Hearts4),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, Hearts5),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, Hearts6),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, Hearts7),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, Hearts8),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, Hearts9),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, Hearts10),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, HeartsJack),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, HeartsQueen),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, HeartsKing),
	instance_create_layer(offscreenPosition, offscreenPosition, layerId, HeartsAce),
	
	//instance_create_layer(currentX, 0, "PaletteLayer", Diamonds2),
	//instance_create_layer(currentX, 0, "PaletteLayer", Diamonds3),
	//instance_create_layer(currentX, 0, "PaletteLayer", Diamonds4),
	//instance_create_layer(currentX, 0, "PaletteLayer", Diamonds5),
	//instance_create_layer(currentX, 0, "PaletteLayer", Diamonds6),
	//instance_create_layer(currentX, 0, "PaletteLayer", Diamonds7),
	//instance_create_layer(currentX, 0, "PaletteLayer", Diamonds8),
	//instance_create_layer(currentX, 0, "PaletteLayer", Diamonds9),
	//instance_create_layer(currentX, 0, "PaletteLayer", Diamonds10),
	//instance_create_layer(currentX, 0, "PaletteLayer", DiamondsJack),
	//instance_create_layer(currentX, 0, "PaletteLayer", DiamondsQueen),
	//instance_create_layer(currentX, 0, "PaletteLayer", DiamondsKing),
	//instance_create_layer(currentX, 0, "PaletteLayer", DiamondsAce),
	
	//instance_create_layer(currentX, 0, "PaletteLayer", Spades2),
	//instance_create_layer(currentX, 0, "PaletteLayer", Spades3),
	//instance_create_layer(currentX, 0, "PaletteLayer", Spades4),
	//instance_create_layer(currentX, 0, "PaletteLayer", Spades5),
	//instance_create_layer(currentX, 0, "PaletteLayer", Spades6),
	//instance_create_layer(currentX, 0, "PaletteLayer", Spades7),
	//instance_create_layer(currentX, 0, "PaletteLayer", Spades8),
	//instance_create_layer(currentX, 0, "PaletteLayer", Spades9),
	//instance_create_layer(currentX, 0, "PaletteLayer", Spades10),
	//instance_create_layer(currentX, 0, "PaletteLayer", SpadesJack),
	//instance_create_layer(currentX, 0, "PaletteLayer", SpadesQueen),
	//instance_create_layer(currentX, 0, "PaletteLayer", SpadesKing),
	//instance_create_layer(currentX, 0, "PaletteLayer", SpadesAce),
	
	//instance_create_layer(currentX, 0, "PaletteLayer", Clubs2),
	//instance_create_layer(currentX, 0, "PaletteLayer", Clubs3),
	//instance_create_layer(currentX, 0, "PaletteLayer", Clubs4),
	//instance_create_layer(currentX, 0, "PaletteLayer", Clubs5),
	//instance_create_layer(currentX, 0, "PaletteLayer", Clubs6),
	//instance_create_layer(currentX, 0, "PaletteLayer", Clubs7),
	//instance_create_layer(currentX, 0, "PaletteLayer", Clubs8),
	//instance_create_layer(currentX, 0, "PaletteLayer", Clubs9),
	//instance_create_layer(currentX, 0, "PaletteLayer", Clubs10),
	//instance_create_layer(currentX, 0, "PaletteLayer", ClubsJack),
	//instance_create_layer(currentX, 0, "PaletteLayer", ClubsQueen),
	//instance_create_layer(currentX, 0, "PaletteLayer", ClubsKing),
	//instance_create_layer(currentX, 0, "PaletteLayer", ClubsAce)
);

//ds_list_shuffle(global.DrawDeck);