function CreateGuid() {
	var guid = "";

	for (var i = 0; i < 8; i++)
	{
		var value = irandom(15);
	
		switch (value)
		{
			case 10: value = "a"; break;
			case 11: value = "b"; break;
			case 12: value = "c"; break;
			case 13: value = "d"; break;
			case 14: value = "e"; break;
			case 15: value = "f"; break;
		}
	
		guid += string(value);
	}

	return guid;


}
