/// @desc ???
var gold = get_integer("Enter amount of gold to add:", "");

global.CurrentGold += gold;

ds_list_add(global.Log, "GAIN: " + string(gold) + " (" + string(global.CurrentGold) + ")");