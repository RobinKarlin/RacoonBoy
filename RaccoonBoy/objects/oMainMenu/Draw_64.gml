


////////DEBUG///////////
//draw_text(x-500,y,x)


//Using enum numbers for different pages in menu
enum menupages {
   titlemenu = 1,
   startgame = 2
}

//Using cases for the different menu pages. which number to which page is shown in enum list above
switch (State) {
	case 1: {
		CurrentY = y
		Margin = 10
		//Headline
		draw_set_font(fTitle)
		DrawTextAndUpdateCurrentY("Project Racoon Boy")
	
		draw_set_halign(fa_center)
		CurrentY = CurrentY + 50
	
		//Change font for all text below headline
		draw_set_font(fText)
	
	
		if ButtonPressed("Start Game") {
			//Go to game
			State = 3
			room_goto(1)
		
		}
	
		if ButtonPressed("Quit") {
			game_end()
		}
	}
	break
}
