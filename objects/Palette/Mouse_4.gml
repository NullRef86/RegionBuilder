/// @desc Start paint

ClearBrush()

global.CurrentBrush = instance_create_layer(mouse_x, mouse_y, "BrushLayer", BrushRef)
