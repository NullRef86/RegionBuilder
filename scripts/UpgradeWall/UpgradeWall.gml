function UpgradeWall() {

	var currentWallEnd = GetWallEndByUuid(argument[0]);
	var newWallLevel = argument[1];

	if (currentWallEnd._wallLevel == newWallLevel)
	{
		return;	
	}

	//Say(currentWallEnd.id, "I'm being upgraded to: " + string(newWallLevel));

	currentWallEnd._wallLevel = newWallLevel;

	for (var i = 0; i < ds_list_size(currentWallEnd._connectionUuids); i++;)
	{
		UpgradeWall(currentWallEnd._connectionUuids[|i], newWallLevel);
	}


}
