/// @desc ???
show_debug_message("");
show_debug_message("Checking for " + string(id) + " (" + string(ds_list_size(_connectedWallEnds)) + ")...");
	
_isHovered = true;
	
for (var i = 0; i < ds_list_size(_connectedWallEnds); i++;)
{
	var otherWallEnd = ds_list_find_value(_connectedWallEnds, i);
			
	var text = "[" + string(otherWallEnd.x) + ":" + string(otherWallEnd.y) + "]";	
		
	show_debug_message("- next to " + string(otherWallEnd.id));
}
	