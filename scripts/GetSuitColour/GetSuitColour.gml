function GetSuitColour(argument0) {
	var card = argument0;

	switch (card._suit)
	{
		case suit_hearts:
			return $7D6DF2;
		case suit_diamonds:
			return c_red;
		case suit_spades:
			return $041433;
		case suit_clubs:
			return c_black;
	}


}
