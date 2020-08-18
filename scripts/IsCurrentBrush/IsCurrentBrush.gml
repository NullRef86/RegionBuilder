function IsCurrentBrush() {
	return 
		global.CurrentBrush != undefined &&
		global.CurrentBrush.object_index == argument[0];


}
