/// @desc ???

var deckSize = ds_list_size(_cardList);

draw_set_halign(fa_center);
draw_text(x + (sprite_get_width(sprite_Card) / 2), y - 25, _name);
draw_set_halign(fa_left);

if (deckSize == 0)
{
	draw_sprite(sprite_Card, 3, x, y);
	return;
}

var verticalSpacing = 2;
var currentY = y + (verticalSpacing * (deckSize - 1));

draw_set_halign(fa_center);
draw_set_color(c_gray);
draw_text(x + (sprite_get_width(sprite_Card) / 2), currentY + sprite_get_height(sprite_Card) + 5, "(" + string(ds_list_size(_cardList)) + ")");
draw_set_color(c_white);
draw_set_halign(fa_left);

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
	PaintCard(x, y, _cardList[|0]);
}