function GetWallEndByUuid(argument0) {
	var uuid = argument0;

	with (WallEnd)
	{
		if (_uuid == uuid)
		{
			return self;	
		}
	}

	return undefined;


}
