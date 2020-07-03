///// @desc ???

//	if (!_isPainting)
//	{
//	return;	
//	}


//		if (mouse_x <= 128)
//		{
//			return;	
//		}

//		var freeToPaint = true;
		
//		var time = current_time;
		
//		with Terrain {
			
//			if (id != other.id)
//			{
//			    t = point_distance(x, y, other.x, other.y);
				
//				//show_debug_message(string(time) + " - Distance from " + string(id) + " to " + string(other.id) + ": " + string(t));
				
//				if (t <= 1) 
//				{
//					freeToPaint = false;	
//					break;
//				}
//			}
//		}
	
//		//show_debug_message(string(time) + " - Free to paint: " + string(freeToPaint ? "true" : "false"))
	
//		if (freeToPaint)
//		{
//			_isPainting = false;
		
//			if (global.CurrentBrush != undefined)
//			{	
//				global.CurrentBrush = instance_copy(true);
//			}
//		}