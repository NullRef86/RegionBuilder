/// @desc ???

event_inherited();

AddUiElement(self);

x = view_wport[0] / 2;
y = view_hport[0] / 2;

if (global.EditingSettlement == undefined)
{
	global.EditingSettlement = instance_create_layer(x, y - 32, "PaletteLayer", Settlement);
}

instance_create_layer(x, y - 32, "PaletteLayer", ColourPicker);

