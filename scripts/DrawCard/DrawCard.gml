var cardList = argument0;

if (ds_list_size(cardList) == 0)
{
	show_debug_message("No cards in the list!");
	return;	
}

show_debug_message("Drawing a card...");

var currentCard = cardList[|0];
currentCard._isPickedUp = true;
currentCard.depth = global.CurrentCardDepth++;
ds_list_delete(cardList, 0);
return currentCard;