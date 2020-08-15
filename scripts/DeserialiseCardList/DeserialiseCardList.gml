var destinationList = argument0;
var inputList = argument1;

for (var i = 0; i < ds_list_size(inputList); i++)
{
	var cardDetailsMap = inputList[|i];
	
	var cardInstance = 	
		instance_create_layer(
			cardDetailsMap[?"x"], 
			cardDetailsMap[?"y"], 
			"CardLayer", 
			asset_get_index(cardDetailsMap[?"object_name"])
		);
	
	ds_list_add(destinationList, cardInstance);
}