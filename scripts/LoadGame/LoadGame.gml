function LoadGame() {
	var filename = global.CurrentSave;

	if (argument_count > 0)
	{
		filename = argument[0];
	}

	var json = "";
	var file = file_text_open_read(filename);

	if (file == -1)
	{
		return false;	
	}

	while (!file_text_eof(file))
	{
		json += file_text_readln(file);
	}
	file_text_close(file);

	LoadObjectsFromJson(json);

	show_debug_message("Loaded '" + filename + "'...");

	return true;


}
