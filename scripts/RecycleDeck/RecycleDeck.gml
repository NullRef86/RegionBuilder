function RecycleDeck() {
	for (var i = 0; i < ds_list_size(global.DiscardPile); i++)
	{
		ds_list_add(global.DrawDeck, global.DiscardPile[|i]);
	}

	ds_list_clear(global.DiscardPile);

	ds_list_shuffle(global.DrawDeck);

	SaveGame();


}
