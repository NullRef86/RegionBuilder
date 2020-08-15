var cardList = argument0;

var outputList = ds_list_create();
for (var i = 0; i < ds_list_size(cardList); i++)
{
	var card = cardList[|i];
	
	var cardDetailsMap = ds_map_create();
	cardDetailsMap[?"object_name"] = object_get_name(card.object_index);
	cardDetailsMap[?"x"] = card.x;
	cardDetailsMap[?"y"] = card.y;
	
	ds_list_add(outputList, cardDetailsMap);
	ds_list_mark_as_map(outputList, ds_list_size(outputList) - 1);
}

return outputList;