var filename = "_Default.json";

if (argument_count > 0)
{
	filename = argument[0];
}

var json = SerialiseAllObjects();

var file = file_text_open_write(filename);
file_text_write_string(file, json);
file_text_close(file);

show_debug_message("Saved '" + filename + "'...");