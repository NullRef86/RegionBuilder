/// @description SetupDeck()
/// @function SetupDeck
//
// [TODO]

global.DrawDeck = ds_queue_create();
global.DiscardPile = ds_stack_create();

var allCards = ds_list_create();

ds_list_add(
	allCards,
	" 2 Hearts: Add 2 houses",
	" 3 Hearts: Add 3 houses",
	" 4 Hearts: Add 4 houses",
	" 5 Hearts: Add 5 houses",
	" 6 Hearts: Add 6 houses",
	" 7 Hearts: Ruin 2 houses",
	" 8 Hearts: Ruin 4 houses",
	" 9 Hearts: Migrate to new settlement of the same faction",
	"10 Hearts: Refugees establish new settlement as new faction",
	" J Hearts: Add chapel",
	" Q Hearts: Add church",
	" K Hearts: Add cathedral",
	" A Hearts: Holy war!",
);

//ds_list_shuffle(allCards);

for (var i = 0; i < ds_list_size(allCards); i++)
{
	var card = ds_list_find_value(allCards, i);
	ds_queue_enqueue(global.DrawDeck, card);
}
