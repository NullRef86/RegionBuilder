function ClearBrush() {
	if (global.CurrentBrush != undefined)
	{
		show_debug_message("Clearing current brush...");
	
		instance_destroy(global.CurrentBrush);
		global.CurrentBrush = undefined;
	
		SaveGame();
	}



}
