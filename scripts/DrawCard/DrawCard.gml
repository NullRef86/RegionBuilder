/// @description DrawCard()
/// @function DrawCard
//
// [TODO]
var currentCard = ds_queue_dequeue(global.DrawDeck);

global.CurrentAction = currentCard;

ds_stack_push(global.DiscardPile, currentCard);

