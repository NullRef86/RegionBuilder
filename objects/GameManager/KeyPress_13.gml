/// @desc ???

var tempQueue = ds_queue_create();

ds_queue_copy(tempQueue, global.DrawDeck);

show_debug_message("Outputting current deck state:");

for (var i = 0; i < ds_queue_size(global.DrawDeck); i++)
{
	show_debug_message("- " + ds_queue_dequeue(tempQueue));
}