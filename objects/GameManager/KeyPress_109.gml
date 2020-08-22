/// @desc ???
var gold = get_integer("Enter amount of gold to spend:", "");

global.CurrentGold -= gold;

if (global.CurrentGold < 0)
{
	global.CurrentGold += gold;
	show_debug_message("Not enough gold!");
	return;
}

ds_list_add(global.Log, "LOSE: " + string(gold) + " (" + string(global.CurrentGold) + ")");