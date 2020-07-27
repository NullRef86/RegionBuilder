/// @desc ???
//game_save("Default.region");



var json = save_instances();
var file = file_text_open_write("save.json");
file_text_write_string(file, json);
file_text_close(file);


show_debug_message("Saved 'save.json'...");