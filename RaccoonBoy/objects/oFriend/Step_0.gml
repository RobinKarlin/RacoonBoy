if (place_meeting(x,y,oPlayer)) && (keyboard_check_pressed(ord("E"))) {
	//Create the textbox in the "Text" layer
	MyTextBox = instance_create_layer(x-200,y-150,"Text", oTextBox)
	//What you want this charachter to say
	MyTextBox.Text = "Lo' dude! Goin' out huntin'?"	
} 