function SetupDeck() {
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
	
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Diamonds2),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Diamonds3),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Diamonds4),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Diamonds5),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Diamonds6),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Diamonds7),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Diamonds8),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Diamonds9),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Diamonds10),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, DiamondsJack),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, DiamondsQueen),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, DiamondsKing),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, DiamondsAce),
						  
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Spades2),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Spades3),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Spades4),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Spades5),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Spades6),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Spades7),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Spades8),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Spades9),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Spades10),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, SpadesJack),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, SpadesQueen),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, SpadesKing),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, SpadesAce),
						  
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Clubs2),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Clubs3),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Clubs4),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Clubs5),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Clubs6),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Clubs7),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Clubs8),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Clubs9),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, Clubs10),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, ClubsJack),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, ClubsQueen),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, ClubsKing),
		instance_create_layer(offscreenPosition, offscreenPosition, layerId, ClubsAce)
	);						  

	ds_list_shuffle(global.DrawDeck);


}
