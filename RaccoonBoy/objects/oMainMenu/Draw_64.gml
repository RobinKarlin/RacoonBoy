
//Using enum numbers for different pages in menu
enum menupages {
   titlemenu = 1,
   options = 2,
   startgame = 3
}

//Using cases for the different menu pages. which number to which page is shown in enum list above
switch (State) {
	case 1: {
		
		//Centre menu on display
		x = display_get_width() / 2
		
		//Needed for the button and DrawText scripts to work
		CurrentY = y
		Margin = 10
		draw_set_font(fTitle)
		DrawTextAndUpdateCurrentY("Project Racoon Boy")
		draw_set_halign(fa_center)
	
		//Change font for all text below headline
		draw_set_font(fText)
	
		//Where the buttons are created
		if ButtonPressed("Start Game") {
			State = 3
			room_goto(rTestrum)
		
		}
		
		if ButtonPressed("Options") {
			State = 2
		
		}
	
		if ButtonPressed("Quit") {
			game_end()
		}
	}
	break
	
		case 2: {
		
		//Centre menu on display
		x = display_get_width() / 2
		
		//Needed for the button and DrawText scripts to work
		CurrentY = y
		Margin = 10
		draw_set_font(fTitle)
		DrawTextAndUpdateCurrentY("Project Racoon Boy")
		draw_set_halign(fa_center)
	
		//Change font for all text below headline
		draw_set_font(fText)
	
	
		//Where the buttons are created
		if ButtonPressed("Toggle Fullscreen") {
		window_set_fullscreen(!window_get_fullscreen());			
		}
	
		if ButtonPressed("Back") {
			State = 1
		}
	}
	break
}
