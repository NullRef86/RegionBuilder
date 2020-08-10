/// @desc ???

var deckSize = ds_list_size(_cardList);

if (deckSize == 0)
{
	draw_sprite(sprite_Card, 3, x, y);
	return;
}

var verticalSpacing = 2;
var currentY = y + (verticalSpacing * (deckSize - 1));

for (var i = deckSize - 2; i >= 0; i--)
{
	draw_sprite(sprite_Card, 1, x, currentY);	
	currentY -= verticalSpacing;
}

var blend = c_white;
var imageIndex = 1;

if (_isHovered)
{
	imageIndex = 2;
}

if (_drawFaceDown)
{
	draw_sprite_ext(sprite_Card, imageIndex, x, y, 1, 1, 0, blend, 1);
}
else
{
	Say(id, "I should be painting a card...");
	PaintCard(x, y, _cardList[|0]);
}