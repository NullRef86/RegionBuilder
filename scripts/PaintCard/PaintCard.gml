function PaintCard(argument0, argument1, argument2) {
	var posX = argument0;
	var poxY = argument1;
	var card = argument2;

	draw_sprite(sprite_Card, 0, posX, poxY);	

	// Draw value
	draw_set_halign(fa_center);
	draw_set_font(FontCard);

	var textPosX = posX + 38;
	var textPosY = poxY + 10;

	var offset = 1;
	draw_set_color(c_black);
	draw_text(textPosX + offset, textPosY + offset, card._value);	
	draw_text(textPosX - offset, textPosY + offset, card._value);	
	draw_text(textPosX + offset, textPosY - offset, card._value);	
	draw_text(textPosX - offset, textPosY - offset, card._value);	

	draw_text(textPosX + offset, textPosY, card._value);	
	draw_text(textPosX, textPosY + offset, card._value);	
	draw_text(textPosX - offset, textPosY, card._value);	
	draw_text(textPosX, textPosY - offset, card._value);	
	draw_set_color(GetSuitColour(card));
	draw_text(textPosX, textPosY, card._value);	

	// Draw suit symbol
	draw_sprite_ext(GetSuitIcon(card), 0, posX + 80, poxY + 18, 2.5, 2.5, 0, c_white, 1);	

	// Draw action
	draw_set_halign(fa_left);		
	draw_set_color(c_white);
	//draw_text(x + 75, y, "- " + card._action);


}
