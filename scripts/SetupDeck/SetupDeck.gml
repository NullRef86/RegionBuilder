/// @description SetupDeck()
/// @function SetupDeck
//
// [TODO]

#macro suit_hearts "Hearts"
#macro suit_diamonds "Diamonds"
#macro suit_spades "Spades"
#macro suit_clubs "Clubs"
#macro value_1     "1"
#macro value_2     "2"
#macro value_3     "3"
#macro value_4     "4"
#macro value_5     "5"
#macro value_6     "6"
#macro value_7     "7"
#macro value_8     "8"
#macro value_9     "9"
#macro value_10    "10"
#macro value_jack  "Jack"
#macro value_queen "Queen"
#macro value_king  "King"
#macro value_ace   "Ace"

global.DrawDeck = ds_list_create();
global.DiscardPile = ds_list_create();
global.Hand = ds_list_create();

ds_list_add(
	global.DrawDeck,

	instance_create_layer(0, 0, "PaletteLayer", Hearts2),
	instance_create_layer(0, 0, "PaletteLayer", Hearts3),
	instance_create_layer(0, 0, "PaletteLayer", Hearts4),
	instance_create_layer(0, 0, "PaletteLayer", Hearts5),
	instance_create_layer(0, 0, "PaletteLayer", Hearts6),
	instance_create_layer(0, 0, "PaletteLayer", Hearts7),
	instance_create_layer(0, 0, "PaletteLayer", Hearts8),
	instance_create_layer(0, 0, "PaletteLayer", Hearts9),
	instance_create_layer(0, 0, "PaletteLayer", Hearts10),
	instance_create_layer(0, 0, "PaletteLayer", HeartsJack),
	instance_create_layer(0, 0, "PaletteLayer", HeartsQueen),
	instance_create_layer(0, 0, "PaletteLayer", HeartsKing),
	instance_create_layer(0, 0, "PaletteLayer", HeartsAce),
	
	instance_create_layer(0, 0, "PaletteLayer", Diamonds2),
	instance_create_layer(0, 0, "PaletteLayer", Diamonds3),
	instance_create_layer(0, 0, "PaletteLayer", Diamonds4),
	instance_create_layer(0, 0, "PaletteLayer", Diamonds5),
	instance_create_layer(0, 0, "PaletteLayer", Diamonds6),
	instance_create_layer(0, 0, "PaletteLayer", Diamonds7),
	instance_create_layer(0, 0, "PaletteLayer", Diamonds8),
	instance_create_layer(0, 0, "PaletteLayer", Diamonds9),
	instance_create_layer(0, 0, "PaletteLayer", Diamonds10),
	instance_create_layer(0, 0, "PaletteLayer", DiamondsJack),
	instance_create_layer(0, 0, "PaletteLayer", DiamondsQueen),
	instance_create_layer(0, 0, "PaletteLayer", DiamondsKing),
	instance_create_layer(0, 0, "PaletteLayer", DiamondsAce),
	
	instance_create_layer(0, 0, "PaletteLayer", Spades2),
	instance_create_layer(0, 0, "PaletteLayer", Spades3),
	instance_create_layer(0, 0, "PaletteLayer", Spades4),
	instance_create_layer(0, 0, "PaletteLayer", Spades5),
	instance_create_layer(0, 0, "PaletteLayer", Spades6),
	instance_create_layer(0, 0, "PaletteLayer", Spades7),
	instance_create_layer(0, 0, "PaletteLayer", Spades8),
	instance_create_layer(0, 0, "PaletteLayer", Spades9),
	instance_create_layer(0, 0, "PaletteLayer", Spades10),
	instance_create_layer(0, 0, "PaletteLayer", SpadesJack),
	instance_create_layer(0, 0, "PaletteLayer", SpadesQueen),
	instance_create_layer(0, 0, "PaletteLayer", SpadesKing),
	instance_create_layer(0, 0, "PaletteLayer", SpadesAce),
	
	instance_create_layer(0, 0, "PaletteLayer", Clubs2),
	instance_create_layer(0, 0, "PaletteLayer", Clubs3),
	instance_create_layer(0, 0, "PaletteLayer", Clubs4),
	instance_create_layer(0, 0, "PaletteLayer", Clubs5),
	instance_create_layer(0, 0, "PaletteLayer", Clubs6),
	instance_create_layer(0, 0, "PaletteLayer", Clubs7),
	instance_create_layer(0, 0, "PaletteLayer", Clubs8),
	instance_create_layer(0, 0, "PaletteLayer", Clubs9),
	instance_create_layer(0, 0, "PaletteLayer", Clubs10),
	instance_create_layer(0, 0, "PaletteLayer", ClubsJack),
	instance_create_layer(0, 0, "PaletteLayer", ClubsQueen),
	instance_create_layer(0, 0, "PaletteLayer", ClubsKing),
	instance_create_layer(0, 0, "PaletteLayer", ClubsAce),
	
	//" 2 Diamonds: Add commercial building (Shop / Tavern)",
	//" 3 Diamonds: Add commercial building (Shop / Tavern)",
	//" 4 Diamonds: Discover or extend a river",
	//" 5 Diamonds: Build bridge",
	//" 6 Diamonds: Discover or extend a lake",
	//" 7 Diamonds: Discover or extend a forest",
	//" 8 Diamonds: Discover, extend, or elevate a hill",
	//" 9 Diamonds: Discover or extend a mountain",
	//"10 Diamonds: Discover or extend a desert",
	//" J Diamonds: A merchant establishes a market",
	//" Q Diamonds: A trader establishes a trade route",
	//" K Diamonds: Build a library",
	//" A Diamonds: Build an acedemy",
	
	//" 2 Spades: Build a basic farm",
	//" 3 Spades: Build a wheat field",
	//" 4 Spades: Build a pasture",
	//" 5 Spades: Build a waterwheel",
	//" 6 Spades: Build a fisher",
	//" 7 Spades: Build a wood cutter",
	//" 8 Spades: Build a quarry",
	//" 9 Spades: Build a mine",
	//"10 Spades: Ruin a production building",
	//" J Spades: Build a lumber yard",
	//" Q Spades: Build a windmill",
	//" K Spades: Build animal processing",
	//" A Spades: Build reapirer yard",
	
	//" 2 Clubs: Build or upgrade a wall",
	//" 3 Clubs: Build or upgrade an outpost tower",
	//" 4 Clubs: Add a military building",
	//" 5 Clubs: Build a weaponsmith",
	//" 6 Clubs: Build an armoursmith",
	//" 7 Clubs: Border skirmish",
	//" 8 Clubs: Light invasion",
	//" 9 Clubs: Medium invasion",
	//"10 Clubs: Heavy seige",
	//" J Clubs: Add a meeting hall",
	//" Q Clubs: Add a keep",
	//" K Clubs: Add a castle",
	//" A Clubs: Add a palace"
);

ds_list_shuffle(global.DrawDeck);

//for (var i = 0; i < ds_list_size(allCards); i++)
//{
//	var card = ds_list_find_value(allCards, i);
//	ds_queue_enqueue(global.DrawDeck, card);
//}
