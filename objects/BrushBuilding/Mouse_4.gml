/// @desc Paint
_building = instance_create_layer(mouse_x, mouse_y, "BuildingsLayer", BuildingRef)

var thisImageAngle = image_angle

with(_building)
{
	image_angle = thisImageAngle;
}