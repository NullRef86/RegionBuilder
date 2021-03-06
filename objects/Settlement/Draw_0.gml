/// @desc Display settlement name
draw_set_font(FontUI);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y - 45, _settlementName);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (_isPartOfTradeRoute)
{
	draw_sprite(sprite_Coin, 0, x, y - 65);
}

image_blend = _colour;

image_index = 0;
if (_isHovered)
{
	image_index = 1;	
}

draw_self();
