/// @desc ???

switch (_heightLevel)
{
	case 1:
		image_blend = $2A4F26;
		break;
	case 2:
		image_blend = $274924;
		break;
	case 3:
		image_blend = $244421;
		break;
	case 4:
		image_blend = $1E3A1C;
		break;
}

draw_self();

//// Inherit the parent event
//event_inherited();
