/// @desc ???
//game_load("Default.region");


var json = "";
var file = file_text_open_read("save.json");
while (!file_text_eof(file))
{
	json+=file_text_readln(file);
}
file_text_close(file);
load_instances(json);


show_debug_message("Loaded 'save.json'...");