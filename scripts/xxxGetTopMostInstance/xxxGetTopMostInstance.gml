function xxxGetTopMostInstance() {

	//var xx = argument0;
	//var yy = argument1;
	//var object = argument2;

	//// Create the instance list
	//var instance_list = ds_list_create();

	//// Find the first instance
	//var instance = instance_position(xx, yy, object);

	//// Create the top instance variable
	//var top_instance = instance;

	//// Loop through each instance, check its depth and deactivate it
	//while instance_exists(instance) {
	//	ds_list_add(instance_list, instance);
	//	instance_deactivate_object(instance);
	//	if instance.depth < top_instance.depth {
	//		top_instance = instance;
	//	}
	//	instance = instance_position(xx, yy, object);
	//}

	//// Reactivate all the instances in the list
	//while ds_list_size(instance_list) > 0 {
	//	instance_activate_object(instance_list[| 0]);
	//	ds_list_delete(instance_list, 0);
	//}

	//// Destroy the list
	//ds_list_destroy(instance_list);

	//// Return the instance on top
	//return top_instance;

	with ( instance_position( mouse_x, mouse_y, all ) )
	{
		Say(id, "Returning me!");
		return self;
	}


}
